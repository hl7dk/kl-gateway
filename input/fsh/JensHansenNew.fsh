Alias: $FSIII = urn:oid:1.2.208.176.2.21

// ------------------------------------------------------------------------------------------------

Instance: 5c20b1b0-ec06-4d25-89e2-13521ebcf642
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-JensHansen-new-1"
Description: "Reporting of Jens Hansen after first encounter with Home Care Assessor at the hospital"
* type = #collection
* timestamp = 2021-02-10T11:14:09Z
* insert CitizenEntry(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen, OK
* insert ConditionEntry(38ea1a7f-251a-4817-aa4a-b59d556db92a) // Personlig pleje, OK
* insert ConditionEntry(80e7cd6e-f926-412c-b326-578f05af643e) // Lave mad, OK
* insert ConditionEntry(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde, OK
* insert ConditionEntry(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse, OK

* insert GoalEntry(82a5cd17-c4fa-4ede-be31-a26457a98834) // Moderate begrænsninger i personlig pleje, OK
* insert GoalEntry(13520a3e-0c63-4cf8-b1ab-028313c8bc11) // Moderate begrænsninger i at lave mad, OK
* insert GoalEntry(cf7f8c3c-3ff8-460f-8c70-88895630105c) // Moderate begrænsninger i at lave husligt arbejde, OK
* insert GoalEntry(0b16696f-1935-45a9-b716-135da8d9cef2) // Lette begrænsninger i mobilitet og bevægelse, OK

* insert PlannedInterventionEntry(0aff84ce-2b70-4677-bfa8-78c599d0eaf9) // Personlig hygiejne, ok
* insert PlannedInterventionEntry(4404487e-978d-4377-bd92-c219e0f1a456) // Hverdagens aktiviteter, ok 
* insert PlannedInterventionEntry(f5475c7b-4dac-477c-9e53-492e66177865) // Madservice, ok
* insert PlannedInterventionEntry(66c3870f-eb9f-4ee8-8f2e-353a6c2cd81a) // Rengøring, ok
* insert PlannedInterventionEntry(749857f9-fdae-4d9c-b180-cf1a2c6019cb) // Mobilitet, ok
* insert EncounterEntry(c0f62d4d-91e5-4d28-a107-526e0a2fc20b) // 15/2-2021

// Conditions
Instance: 38ea1a7f-251a-4817-aa4a-b59d556db92a
InstanceOf: KLGatewayCareCondition
Description: "Personlig pleje, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#1ceef776-0cfa-4acd-b222-c5bb2424e0c1 "3"
* code = $FSIII#feb38b55-c2d7-4d57-99c2-93622eaa0025 "Personlig pleje"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* recordedDate = 2021-02-10

Instance: 80e7cd6e-f926-412c-b326-578f05af643e
InstanceOf: KLGatewayCareCondition
Description: "Lave mad, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#1ceef776-0cfa-4acd-b222-c5bb2424e0c1 "3" // Svære begrænsninger
* code = $FSIII#75bfc8db-a220-4801-a8c7-5e968e94d44b "Lave mad" // Lave mad
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* recordedDate = 2021-02-10

Instance: 4f47118b-25a0-4998-8f71-86b1ce220f11
InstanceOf: KLGatewayCareCondition
Description: "Lave husligt arbejde, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#1ceef776-0cfa-4acd-b222-c5bb2424e0c1 "3" // Svære begrænsninger
* code = $FSIII#a7ac8429-513f-43cd-bc69-96a8d0e0f0ff "Lave husligt arbejde"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* recordedDate = 2021-02-10

Instance: 1c13a997-628d-4d01-af7c-9adb7c19b2a6
InstanceOf: KLGatewayCareCondition
Description: "Mobilitet og bevægelse, moderate begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#d984ad21-48fe-4619-845e-2aa0303048e7 "2"
* code = $FSIII#d8aa5f09-cd9c-4996-a853-1c95ee98f25c "Mobilitet og bevægelse"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* recordedDate = 2021-02-10

// Goals
Instance: 82a5cd17-c4fa-4ede-be31-a26457a98834
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i personlig pleje for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* target.detailCodeableConcept = $FSIII#d984ad21-48fe-4619-845e-2aa0303048e7 "2"
* addresses = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // Personlig pleje

Instance: 13520a3e-0c63-4cf8-b1ab-028313c8bc11
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i at lave mad for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* startDate = 2021-02-10
* target.detailCodeableConcept = $FSIII#d984ad21-48fe-4619-845e-2aa0303048e7 "2"
* addresses = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // Lave mad

Instance: cf7f8c3c-3ff8-460f-8c70-88895630105c
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i at lave husligt arbejde for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* startDate = 2021-02-10
* target.detailCodeableConcept = $FSIII#d984ad21-48fe-4619-845e-2aa0303048e7 "2"	 // Moderate begrænsninger
* addresses = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde, ok

Instance: 0b16696f-1935-45a9-b716-135da8d9cef2
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, lette begrænsninger i mobilitet og bevægelse for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* startDate = 2021-02-10
* target.detailCodeableConcept = $FSIII#fcc16cb1-41f0-4832-b834-110fba0aaabe "1" // Lette begrænsninger
* addresses = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse 


// Planned interventions
Instance: 0aff84ce-2b70-4677-bfa8-78c599d0eaf9
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing personal hygiene for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#17312894-b23f-43d9-9723-b725ac25d872 "Personlig hygiejne"
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) //Personlig pleje

Instance: 4404487e-978d-4377-bd92-c219e0f1a456
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing hverdagens aktiviteter for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#1ae7906b-5f16-4ba4-9077-7f59067cbedb "Hverdagens aktiviteter"
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde

Instance: f5475c7b-4dac-477c-9e53-492e66177865
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing madservice for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#9aad7654-b9f9-40a3-84d9-2ae1dec4228a "Madservice"
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // Lave mad, ok

Instance: 66c3870f-eb9f-4ee8-8f2e-353a6c2cd81a
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing rengøring for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#43608562-e356-4990-8b96-e35128bbdc4f "Rengøring"
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde, ok

Instance: 749857f9-fdae-4d9c-b180-cf1a2c6019cb
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing mobilitet for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#ef8ee035-00d2-48b9-b366-27753ccd5504 "Mobilitet"
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse, ok


// Followup encounters
Instance: c0f62d4d-91e5-4d28-a107-526e0a2fc20b
InstanceOf: klgateway-care-general-encounter
Description: "Follow-up date for Jens Hansen's condition"
Usage: #inline
* status = 	http://hl7.org/fhir/encounter-status#planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624)
* period.start = 2020-08-14
* reasonReference[+] = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // personlig pleje
* reasonReference[+] = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // lave mad
* reasonReference[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde
* reasonReference[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse

//__________________________________________________________________________________________________

Instance: 832c69db-98b5-4aee-ab00-c24967e89d25
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-JensHansen-InterventionDelivery"
Description: "Reporting of Jens Hansen's delivered intervention on Febrauary 13th"
* type = #collection
* timestamp = 2021-02-14T02:47:35Z
* insert CitizenEntry(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* insert EncounterEntry(dc15e643-1ca7-4a94-a581-641efb9bb890) //morgenbesøg
* insert EncounterEntry(66e5facc-4231-4fcf-a277-58d67360e6a6) //middagsbesøg
* insert EncounterEntry(4177484b-b96a-4661-8664-dc8bd8df4dfe) //aftenbesøg
* insert PlannedInterventionEntry(0aff84ce-2b70-4677-bfa8-78c599d0eaf9) // Personlig hygiejne, ok
* insert PlannedInterventionEntry(4404487e-978d-4377-bd92-c219e0f1a456) // Hverdagens aktiviteter, ok
* insert PlannedInterventionEntry(749857f9-fdae-4d9c-b180-cf1a2c6019cb) // Mobilitet, ok
* insert ConditionEntry(38ea1a7f-251a-4817-aa4a-b59d556db92a) // Personlig pleje, OK
* insert ConditionEntry(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde, OK
* insert ConditionEntry(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse, OK

Instance: dc15e643-1ca7-4a94-a581-641efb9bb890 // Morgenbesøg
InstanceOf: klgateway-care-general-encounter
Description: "General encounter used to document delivery of Jens Hansen's Intervetions in the morning"
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#finished
* class = $v3-ActCode#HH
* type = $KLCommonCodes#784275f1-6822-4a88-b361-d958007d5253 "udførelse af planlagt indsats"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624)
* period.start = 2021-02-13T08:05:00Z
* period.end = 2021-02-13T08:25:00Z
* extension[basedOnIntervention][+].valueReference = Reference(0aff84ce-2b70-4677-bfa8-78c599d0eaf9)
* extension[basedOnIntervention][+].valueReference = Reference(4404487e-978d-4377-bd92-c219e0f1a456)
* extension[basedOnIntervention][+].valueReference = Reference(749857f9-fdae-4d9c-b180-cf1a2c6019cb)


Instance: 66e5facc-4231-4fcf-a277-58d67360e6a6 // Middagsbesøg
InstanceOf: klgateway-care-general-encounter
Description: "General encounter used to document delivery of Jens Hansen's Intervetions in the middel of the day"
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#finished
* class = $v3-ActCode#HH
* type = $KLCommonCodes#784275f1-6822-4a88-b361-d958007d5253 "udførelse af planlagt indsats"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624)
* period.start = 2021-02-13T13:25:00Z
* period.end = 2021-02-13T13:45:00Z
* extension[basedOnIntervention][+].valueReference = Reference(0aff84ce-2b70-4677-bfa8-78c599d0eaf9)
* extension[basedOnIntervention][+].valueReference = Reference(4404487e-978d-4377-bd92-c219e0f1a456)
* extension[basedOnIntervention][+].valueReference = Reference(749857f9-fdae-4d9c-b180-cf1a2c6019cb)

Instance: 4177484b-b96a-4661-8664-dc8bd8df4dfe // Aftenbesøg
InstanceOf: klgateway-care-general-encounter
Description: "General encounter used to document delivery of Jens Hansen's Intervetions in the evening"
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#finished
* class = $v3-ActCode#HH
* type = $KLCommonCodes#784275f1-6822-4a88-b361-d958007d5253 "udførelse af planlagt indsats"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624)
* period.start = 2021-02-13T21:00:00Z
* period.end = 2021-02-13T21:20:00Z
* extension[basedOnIntervention][+].valueReference = Reference(0aff84ce-2b70-4677-bfa8-78c599d0eaf9)
* extension[basedOnIntervention][+].valueReference = Reference(4404487e-978d-4377-bd92-c219e0f1a456)
* extension[basedOnIntervention][+].valueReference = Reference(749857f9-fdae-4d9c-b180-cf1a2c6019cb)

// // ------------------------------------------------------------------------------------------------
// Instance: b1c5348b-fe9f-4afc-96ff-8c42b6c6c7ff
// InstanceOf: KLGatewayCareDeliveryReport
// Title: "DeliveryReport-JensHansen-2"
// Description: "Reporting of Jens Hansen after second encounter with Home Care Assessor updating follow-up date"
// * type = #collection
// * timestamp = 2021-02-15T08:39:34Z
// * insert CitizenEntry(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * insert ConditionEntryVersion(d45b02d1-be76-4968-812b-6b32338ad8ad, v2) // Af- og påklædning
// * insert ConditionEntryVersion(34665f6d-7573-46fb-8b4d-72f30641284b, v2) // Udføre daglige rutiner
// * insert ConditionEntryVersion(067e0542-1d8a-404d-b6db-f2bfa6a03c2e, v2) // Lave mad
// * insert ConditionEntryVersion(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14, v2) // Lave husligt arbejde
// * insert ConditionEntryVersion(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd, v2) // Gå
// * insert ConditionEntryVersion(5ad5649a-6317-41de-8cc4-364b9bafd298, v2) // Bevæge sig omkring
// * insert ConditionEntryVersion(fcc4040a-1803-434f-b633-8b354c5fbfb4, v2) // Muskelstyrke
// * insert EncounterEntry(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021
// * insert FollowUpObservationEntry(4438410f-c879-45ec-9626-75c85fa1449a) // Fortsættes uændret

// // Conditions
// Instance: d45b02d1-be76-4968-812b-6b32338ad8ad-v2 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Af- og påklædning, svære begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "d45b02d1-be76-4968-812b-6b32338ad8ad" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B4 // Svære begrænsninger
// * code = $FSIII#J1.3 // Af- og påklædning
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

// Instance: 34665f6d-7573-46fb-8b4d-72f30641284b-v2 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Udføre daglige rutiner, svære begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "34665f6d-7573-46fb-8b4d-72f30641284b" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B4 // Svære begrænsninger
// * code = $FSIII#J2.3 // Udføre daglige rutiner
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

// Instance: 067e0542-1d8a-404d-b6db-f2bfa6a03c2e-v2 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Lave mad, svære begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "067e0542-1d8a-404d-b6db-f2bfa6a03c2e" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B4 // Svære begrænsninger
// * code = $FSIII#J2.2 // Lave mad
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

// Instance: cd8643fd-8a42-4ef8-81b4-bf5ec2253f14-v2 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Lave husligt arbejde, svære begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "cd8643fd-8a42-4ef8-81b4-bf5ec2253f14" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B4 // Svære begrænsninger
// * code = $FSIII#J2.1 // Lave husligt arbejde
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

// Instance: 806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd-v2 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Gå, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J3.8 // Gå
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

// Instance: 5ad5649a-6317-41de-8cc4-364b9bafd298-v2 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Bevæge sig omkring, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "5ad5649a-6317-41de-8cc4-364b9bafd298" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J3.2 // Bevæge sig omkring
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

// Instance: fcc4040a-1803-434f-b633-8b354c5fbfb4-v2 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Muskelstyrke, svære begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "fcc4040a-1803-434f-b633-8b354c5fbfb4" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B4 // Svære begrænsninger
// * code = $FSIII#J3.7 // Muskelstyrke
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

// // Followup encounters
// Instance: 56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b
// InstanceOf: KLGatewayCareEncounter
// Description: "Encounter for a follow-up for Jens Hansen on February 15th, 2021"
// Usage: #inline
// * status = #planned
// * class = $v3-ActCode#HH
// * type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * period.start = 2021-02-24

// // Followup Observations
// Instance: 4438410f-c879-45ec-9626-75c85fa1449a
// InstanceOf: KLGatewayCareFollowUpObservation
// Description: "Follow-up observation documenting that focus on all conditions should be continued unchanged for Jens Hansen"
// Usage: #inline
// * status = #final
// * code = $SnomedCT#712744002
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * focus[+] = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning
// * focus[+] = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner
// * focus[+] = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad
// * focus[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde
// * focus[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
// * focus[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
// * focus[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke
// * effectiveDateTime = 2021-02-15
// * valueCodeableConcept = $FSIII#E1 // Fortsættes uændret


// // ------------------------------------------------------------------------------------------------

// Instance: 643c3e42-ab90-4354-9b98-f01b4740d3d9
// InstanceOf: KLGatewayCareDeliveryReport
// Title: "DeliveryReport-JensHansen-3"
// Description: "Reporting of Jens Hansen after first encounter with Home Care Assessor at the hospital"
// * type = #collection
// * timestamp = 2021-02-24T08:46:36Z
// * insert CitizenEntry(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * insert ConditionEntryVersion(d45b02d1-be76-4968-812b-6b32338ad8ad, v3) // Af- og påklædning
// * insert ConditionEntryVersion(34665f6d-7573-46fb-8b4d-72f30641284b, v3) // Udføre daglige rutiner
// * insert ConditionEntryVersion(067e0542-1d8a-404d-b6db-f2bfa6a03c2e, v3) // Lave mad
// * insert ConditionEntryVersion(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14, v3) // Lave husligt arbejde
// * insert ConditionEntryVersion(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd, v3) // Gå
// * insert ConditionEntryVersion(5ad5649a-6317-41de-8cc4-364b9bafd298, v3) // Bevæge sig omkring
// * insert ConditionEntryVersion(fcc4040a-1803-434f-b633-8b354c5fbfb4, v3) // Muskelstyrke
// * insert GoalEntryVersion(91bed89f-4365-4878-849c-61554de55248, v3) //  Ingen begrænsninger i af- og påklædning
// * insert GoalEntryVersion(33cd1262-c00f-440a-9e30-620166ff6b7a, v3) // Ingen begrænsninger i at udføre daglige rutiner
// * insert GoalEntryVersion(a638744a-c6a9-49c5-940e-e16f94e806b9, v3) // Lette begrænsninger i at lave mad
// * insert GoalEntryVersion(1c62dbc4-91f7-4ad8-86be-783b7158c475, v3) // Lette begrænsninger i at lave husligt arbejde
// * insert GoalEntryVersion(cc6288f9-48d4-4aac-b640-b750a2dfeb0d, v3) // Ingen begrænsninger i at gå
// * insert GoalEntryVersion(dc40bf0d-4411-4317-b424-9bad5045836e, v3) // Ingen begrænsninger i at bevæge sig omkring
// * insert GoalEntryVersion(1efb9aec-4e79-4ead-8502-50168f569a18, v3) // Ingen begrænsninger i muskelstyrke
// * insert PlannedInterventionEntryVersion(9ace0320-a6bd-4d90-bfed-b6e5d219dba3, v3) // Personlig hygiejne afslttet 
// * insert PlannedInterventionEntryVersion(4f325b94-99fe-4781-9e05-97e27279f8ec, v3) // Hverdagens aktiviteter ændret
// * insert PlannedInterventionEntryVersion(d8130c0c-d8a1-47c7-acdf-d32f23c58db9, v3) // Mobilitet afsluttet
// * insert PlannedInterventionEntry(7c22ac66-f42b-476e-8d54-0607ea06f9bf) // RH Personlig hygiejne
// * insert PlannedInterventionEntry(5eb9f137-bd44-481a-95b0-18dacdb4c757) // RH Hverdagens aktiviteter
// * insert PlannedInterventionEntry(e353b5b7-5e03-4142-bb74-e49015d95c50) // RH Mobilitet
// * insert EncounterEntry(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021
// * insert FollowUpObservationEntry(e434699d-5f4e-491b-9f76-5c5dbd539edc) // Revisitation


// // Conditions
// Instance: d45b02d1-be76-4968-812b-6b32338ad8ad-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Af- og påklædning, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "d45b02d1-be76-4968-812b-6b32338ad8ad" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J1.3 // Af- og påklædning
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10 
// * extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

// Instance: 34665f6d-7573-46fb-8b4d-72f30641284b-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Udføre daglige rutiner, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "34665f6d-7573-46fb-8b4d-72f30641284b" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J2.3 // Udføre daglige rutiner
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

// Instance: 067e0542-1d8a-404d-b6db-f2bfa6a03c2e-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Lave mad, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "067e0542-1d8a-404d-b6db-f2bfa6a03c2e" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J2.2 // Lave mad
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

// Instance: cd8643fd-8a42-4ef8-81b4-bf5ec2253f14-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Lave husligt arbejde, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "cd8643fd-8a42-4ef8-81b4-bf5ec2253f14" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J2.1 // Lave husligt arbejde
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

// Instance: 806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Gå, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J3.8 // Gå
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

// Instance: 5ad5649a-6317-41de-8cc4-364b9bafd298-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Bevæge sig omkring, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "5ad5649a-6317-41de-8cc4-364b9bafd298" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J3.2 // Bevæge sig omkring
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

// Instance: fcc4040a-1803-434f-b633-8b354c5fbfb4-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Muskelstyrke, moderate begrænsninger for Jens Hansen"
// Usage: #inline
// * id = "fcc4040a-1803-434f-b633-8b354c5fbfb4" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B3 // Moderate begrænsninger
// * code = $FSIII#J3.7 // Muskelstyrke
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

// // Goals
// Instance: 91bed89f-4365-4878-849c-61554de55248-v3 // Fake id
// InstanceOf: KLGatewayCareGoal
// Description: "Forventet tilstand, ingen begrænsninger i af- og påklædning for Jens Hansen"
// Usage: #inline
// * id = "91bed89f-4365-4878-849c-61554de55248" // Real id
// * lifecycleStatus = #planned
// * category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
// * description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * startDate = 2021-02-10
// * target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
// * target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
// * addresses = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

// Instance: 33cd1262-c00f-440a-9e30-620166ff6b7a-v3 // Fake id
// InstanceOf: KLGatewayCareGoal
// Description: "Forventet tilstand, ingen begrænsninger i at udføre daglige rutiner for Jens Hansen"
// Usage: #inline
// * id = "33cd1262-c00f-440a-9e30-620166ff6b7a" // Real id
// * lifecycleStatus = #planned
// * category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
// * description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * startDate = 2021-02-10
// * target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
// * target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
// * addresses = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner

// Instance: a638744a-c6a9-49c5-940e-e16f94e806b9-v3 // Fake id
// InstanceOf: KLGatewayCareGoal
// Description: "Forventet tilstand, lette begrænsninger i at lave mad for Jens Hansen"
// Usage: #inline
// * id = "a638744a-c6a9-49c5-940e-e16f94e806b9" // Real id
// * lifecycleStatus = #planned
// * category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
// * description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * startDate = 2021-02-10
// * target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
// * target.detailCodeableConcept = $FSIII#B2 // Lette begrænsninger
// * addresses = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad

// Instance: 1c62dbc4-91f7-4ad8-86be-783b7158c475-v3 // Fake id
// InstanceOf: KLGatewayCareGoal
// Description: "Forventet tilstand, lette begrænsninger i at lave husligt arbejde for Jens Hansen"
// Usage: #inline
// * id = "1c62dbc4-91f7-4ad8-86be-783b7158c475" // Real id
// * lifecycleStatus = #planned
// * category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
// * description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * startDate = 2021-02-10
// * target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
// * target.detailCodeableConcept = $FSIII#B2 // Lette begrænsninger
// * addresses = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

// Instance: cc6288f9-48d4-4aac-b640-b750a2dfeb0d-v3 // Fake id
// InstanceOf: KLGatewayCareGoal
// Description: "Forventet tilstand, ingen begrænsninger i at gå for Jens Hansen"
// Usage: #inline
// * id = "cc6288f9-48d4-4aac-b640-b750a2dfeb0d" // Real id
// * lifecycleStatus = #planned
// * category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
// * description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * startDate = 2021-02-10
// * target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
// * target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
// * addresses = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå 

// Instance: dc40bf0d-4411-4317-b424-9bad5045836e-v3 // Fake id
// InstanceOf: KLGatewayCareGoal
// Description: "Forventet tilstand, ingen begrænsninger i at bevæge sig omkring for Jens Hansen"
// Usage: #inline
// * id = "dc40bf0d-4411-4317-b424-9bad5045836e" // Real id
// * lifecycleStatus = #planned
// * category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
// * description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * startDate = 2021-02-10
// * target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
// * target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
// * addresses = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring

// Instance: 1efb9aec-4e79-4ead-8502-50168f569a18-v3 // Fake id
// InstanceOf: KLGatewayCareGoal
// Description: "Forventet tilstand, ingen begrænsninger i muskelstyrke for Jens Hansen"
// Usage: #inline
// * id = "1efb9aec-4e79-4ead-8502-50168f569a18" // Real id
// * lifecycleStatus = #planned
// * category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
// * description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * startDate = 2021-02-10
// * target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
// * target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
// * addresses = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// // Planned interventions
// Instance: 9ace0320-a6bd-4d90-bfed-b6e5d219dba3-v3 // Fake id
// InstanceOf: KLGatewayCarePlannedIntervention
// Description: "Planned intervention doing personal hygiene for Jens Hansen"
// Usage: #inline
// * id = "9ace0320-a6bd-4d90-bfed-b6e5d219dba3" // Real id
// * status = #completed
// * intent = #plan
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * period.start = 2021-02-12
// * period.end = 2021-02-24
// * activity.detail.code.coding[level2] = $FSIII#H1.1 // Personlig hygiejne
// * activity.detail.status = #in-progress
// * activity.detail.reasonReference = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

// Instance: 4f325b94-99fe-4781-9e05-97e27279f8ec-v3 // Fake id
// InstanceOf: KLGatewayCarePlannedIntervention
// Description: "Planned intervention doing hverdagens aktiviteter for Jens Hansen"
// Usage: #inline
// * id = "4f325b94-99fe-4781-9e05-97e27279f8ec" // Real id
// * status = #active
// * intent = #plan
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * period.start = 2021-02-12
// * activity.detail.code.coding[level2] = $FSIII#H1.5 // Hverdagens aktiviteter
// * activity.detail.status = #in-progress
// * activity.detail.reasonReference[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

// Instance: d8130c0c-d8a1-47c7-acdf-d32f23c58db9-v3 // Fake id
// InstanceOf: KLGatewayCarePlannedIntervention
// Description: "Planned intervention doing mobilitet for Jens Hansen"
// Usage: #inline
// * id = "d8130c0c-d8a1-47c7-acdf-d32f23c58db9" // Real id
// * status = #completed
// * intent = #plan
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * period.start = 2021-02-12
// * period.end = 2021-02-24
// * activity.detail.code.coding[level2] = $FSIII#H1.4 // Mobilitet
// * activity.detail.status = #in-progress
// * activity.detail.reasonReference[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
// * activity.detail.reasonReference[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
// * activity.detail.reasonReference[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// Instance: 7c22ac66-f42b-476e-8d54-0607ea06f9bf
// InstanceOf: KLGatewayCarePlannedIntervention
// Description: "Planned intervention doing RH personlig hygiejne for Jens Hansen"
// Usage: #inline
// * status = #active
// * intent = #plan
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * period.start = 2021-02-25
// * activity.detail.code.coding[level2] = $FSIII#H2.5 // RH Personlig hygiejne
// * activity.detail.status = #in-progress
// * activity.detail.reasonReference = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

// Instance: 5eb9f137-bd44-481a-95b0-18dacdb4c757
// InstanceOf: KLGatewayCarePlannedIntervention
// Description: "Planned intervention doing RH hverdagens aktiviteter for Jens Hansen"
// Usage: #inline
// * status = #active
// * intent = #plan
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * period.start = 2021-02-25
// * activity.detail.code.coding[level2] = $FSIII#H2.2 // RH Hverdagens aktiviteter
// * activity.detail.status = #in-progress
// * activity.detail.reasonReference = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner

// Instance: e353b5b7-5e03-4142-bb74-e49015d95c50
// InstanceOf: KLGatewayCarePlannedIntervention
// Description: "Planned intervention doing RH mobilitet for Jens Hansen"
// Usage: #inline
// * status = #active
// * intent = #plan
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * period.start = 2021-02-25
// * activity.detail.code.coding[level2] = $FSIII#H2.4 // RH Mobilitet
// * activity.detail.status = #in-progress
// * activity.detail.reasonReference[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
// * activity.detail.reasonReference[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
// * activity.detail.reasonReference[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// // Followup encounters
// Instance: fbf243bb-9d70-489d-875d-87e14c980d7c
// InstanceOf: KLGatewayCareEncounter
// Description: "Encounter for a follow-up for Jens Hansen on Martch 10th, 2021"
// Usage: #inline
// * status = #planned
// * class = $v3-ActCode#HH
// * type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * period.start = 2021-03-10

// // Followup Observations
// Instance: e434699d-5f4e-491b-9f76-5c5dbd539edc
// InstanceOf: KLGatewayCareFollowUpObservation
// Description: "Follow-up observation documenting that focus on all conditions should be continued unchanged for Jens Hansen"
// Usage: #inline
// * status = #final
// * code = $SnomedCT#712744002
// * subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
// * focus[+] = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning
// * focus[+] = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner
// * focus[+] = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad
// * focus[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde
// * focus[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
// * focus[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
// * focus[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke
// * effectiveDateTime = 2021-02-24
// * valueCodeableConcept = $FSIII#E4 // Revisitation

// // ------------------------------------------------------------------------------------------------

// Citizen
Instance: 0533e773-c9e6-4cf5-b42d-f3ee07a9c624
InstanceOf: KLGatewayCareCitizen
Description: "Citizen Jens Hansen"
Usage: #inline
* identifier.use = #official
* identifier.value = "0101410001"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"