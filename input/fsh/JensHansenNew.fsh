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
* period.start = 2021-02-15
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

// ------------------------------------------------------------------------------------------------
Instance: 8ec154f2-1429-4a41-aca7-f900e1d3bee2
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-JensHansen-2"
Description: "Reporting of Jens Hansen after second encounter with Home Care Assessor updating follow-up date"
* type = #collection
* timestamp = 2021-02-15T08:39:34Z
* insert CitizenEntry(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* insert ConditionEntry(38ea1a7f-251a-4817-aa4a-b59d556db92a) // Personlig pleje, OK
* insert ConditionEntry(80e7cd6e-f926-412c-b326-578f05af643e) // Lave mad, OK
* insert ConditionEntry(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde, OK
* insert ConditionEntry(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse, OK

* insert EncounterEntryVersion(c0f62d4d-91e5-4d28-a107-526e0a2fc20b, v2) //15/2-2021
* insert EncounterEntry(26116f56-3f78-4dbd-9bfc-8d83c0272a2a) // 24/2-2021
* insert FollowUpObservationEntry(58a9388b-87ff-4e09-842a-3109cfce1566) // Fortsættes


// Followup encounters
Instance: 26116f56-3f78-4dbd-9bfc-8d83c0272a2a
InstanceOf: klgateway-care-general-encounter
Description: "Encounter for a follow-up for Jens Hansen on February 24th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-24
* reasonReference[+] = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // personlig pleje
* reasonReference[+] = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // lave mad
* reasonReference[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde
* reasonReference[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse

Instance: c0f62d4d-91e5-4d28-a107-526e0a2fc20b-v2
InstanceOf: klgateway-care-general-encounter
Description: "Follow-up date for Jens Hansen's condition on February 15th, 2021"
Usage: #inline
* id = "c0f62d4d-91e5-4d28-a107-526e0a2fc20b"
* status = 	http://hl7.org/fhir/encounter-status#finished
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624)
* period.start = 2021-02-15
* reasonReference[+] = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // personlig pleje
* reasonReference[+] = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // lave mad
* reasonReference[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde
* reasonReference[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse

// Followup Observations
Instance: 58a9388b-87ff-4e09-842a-3109cfce1566
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on all conditions should be continued unchanged for Jens Hansen"
Usage: #inline
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* focus[+] = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // personlig pleje
* focus[+] = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // lave mad
* focus[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde
* focus[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse
* effectiveDateTime = 2021-02-15
* valueCodeableConcept = $FSIII#9c90b0e5-9c0a-4b72-a18c-76cd6d6c6213 "Fortsættes"


// ------------------------------------------------------------------------------------------------

Instance: 89071c96-e053-40d5-8873-105b7bad40f9
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-JensHansen-3"
Description: "Reporting of Jens Hansen after first encounter with Home Care Assessor at the hospital"
* type = #collection
* timestamp = 2021-02-25T02:00:36Z
* insert CitizenEntry(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* insert ConditionEntryVersion(38ea1a7f-251a-4817-aa4a-b59d556db92a, v2) // Personlig pleje
* insert ConditionEntryVersion(80e7cd6e-f926-412c-b326-578f05af643e, v2) // Lave mad
* insert ConditionEntryVersion(4f47118b-25a0-4998-8f71-86b1ce220f11, v2) // Lave husligt arbejde
* insert ConditionEntry(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse
* insert GoalEntry(0b1999e8-4b72-4ed1-8766-4acbff7962c9) // Ingen begrænsninger i Personlig pleje
* insert GoalEntry(98c95f84-b32c-49b9-8d25-d6268f3710aa) // Lette begrænsninger i at lave mad
* insert GoalEntry(6c22784a-1303-46a8-bbae-8b9f19dd6319) // Lette begrænsninger i at lave husligt arbejde
* insert GoalEntry(877958e2-27c2-4b9e-bd12-e1a051a22cdb) // Ingen eller ubetydelige begrænsninger i mobilitet og bevægelse
* insert PlannedInterventionEntryVersion(0aff84ce-2b70-4677-bfa8-78c599d0eaf9, v2) // Personlig hygiejne afslttet 
* insert PlannedInterventionEntryVersion(749857f9-fdae-4d9c-b180-cf1a2c6019cb, v2) // Mobilitet afsluttet
* insert PlannedInterventionEntry(f824fbab-28a7-4b13-87d3-24e120873455) // RH Personlig hygiejne
* insert PlannedInterventionEntry(474e79f1-86b4-4e74-a122-da0b48bf8936) // RH Mobilitet
* insert EncounterEntryVersion(26116f56-3f78-4dbd-9bfc-8d83c0272a2a, v2) // 24/2-2021
* insert EncounterEntry(48c2b2c1-afbd-4d28-a51b-57b6837829e4) // 10/3-2021
* insert FollowUpObservationEntry(a80bb9e0-5838-4bf1-924b-31f88aecc3c7) // Revisitation


// Conditions
Instance: 38ea1a7f-251a-4817-aa4a-b59d556db92a-v2
InstanceOf: KLGatewayCareCondition
Description: "Personlig pleje, Moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "38ea1a7f-251a-4817-aa4a-b59d556db92a"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#d984ad21-48fe-4619-845e-2aa0303048e7 "2" //Moderate begrænsninger
* code = $FSIII#feb38b55-c2d7-4d57-99c2-93622eaa0025 "Personlig pleje"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* recordedDate = 2021-02-10

Instance: 80e7cd6e-f926-412c-b326-578f05af643e-v2
InstanceOf: KLGatewayCareCondition
Description: "Lave mad, Moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "80e7cd6e-f926-412c-b326-578f05af643e"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#d984ad21-48fe-4619-845e-2aa0303048e7 "2" //Moderate begrænsninger
* code = $FSIII#75bfc8db-a220-4801-a8c7-5e968e94d44b "Lave mad" // Lave mad
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* recordedDate = 2021-02-10

Instance: 4f47118b-25a0-4998-8f71-86b1ce220f11-v2
InstanceOf: KLGatewayCareCondition
Description: "Lave husligt arbejde, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "4f47118b-25a0-4998-8f71-86b1ce220f11"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#d984ad21-48fe-4619-845e-2aa0303048e7 "2" //Moderate begrænsninger
* code = $FSIII#a7ac8429-513f-43cd-bc69-96a8d0e0f0ff "Lave husligt arbejde"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* recordedDate = 2021-02-10

// Goals
Instance: 0b1999e8-4b72-4ed1-8766-4acbff7962c9 // Ingen begrænsninger i Personlig pleje
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, Ingen begrænsninger i personlig pleje for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* startDate = 2021-02-24
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* target.detailCodeableConcept = $FSIII#9c5cfb57-a498-40e5-98a7-792bf5fb205b "0"
* addresses = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // Personlig pleje

Instance: 98c95f84-b32c-49b9-8d25-d6268f3710aa // Lette begrænsninger i at lave mad
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, Lette begrænsninger i at lave mad for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* startDate = 2021-02-24
* target.detailCodeableConcept = $FSIII#fcc16cb1-41f0-4832-b834-110fba0aaabe "1"
* addresses = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // Lave mad

Instance: 6c22784a-1303-46a8-bbae-8b9f19dd6319 // Lette begrænsninger i at lave husligt arbejde
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, Lette begrænsninger i at lave husligt arbejde for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* startDate = 2021-02-24
* target.detailCodeableConcept = $FSIII#fcc16cb1-41f0-4832-b834-110fba0aaabe "1"	 // Lette begrænsninger
* addresses = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde, ok

Instance: 877958e2-27c2-4b9e-bd12-e1a051a22cdb // Ingen eller ubetydelige begrænsninger i mobilitet og bevægelse
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, Ingen eller ubetydelige begrænsninger i mobilitet og bevægelse for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* startDate = 2021-02-24
* target.detailCodeableConcept = $FSIII#9c5cfb57-a498-40e5-98a7-792bf5fb205b "0" // Ingen/ubetydelige begrænsninger.
* addresses = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse 

// Planned interventions
Instance: 0aff84ce-2b70-4677-bfa8-78c599d0eaf9-v2
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing personal hygiene for Jens Hansen"
Usage: #inline
* id = "0aff84ce-2b70-4677-bfa8-78c599d0eaf9"
* status = #completed
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-12
* period.end = 2021-02-24
* activity.detail.code.coding[level2] = $FSIII#17312894-b23f-43d9-9723-b725ac25d872 "Personlig hygiejne"
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) //Personlig pleje

Instance: 749857f9-fdae-4d9c-b180-cf1a2c6019cb-v2
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing mobilitet for Jens Hansen"
Usage: #inline
* id = "749857f9-fdae-4d9c-b180-cf1a2c6019cb"
* status = #completed
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-12
* period.end = 2021-02-24
* activity.detail.code.coding[level2] = $FSIII#ef8ee035-00d2-48b9-b366-27753ccd5504 "Mobilitet"
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse, ok

Instance: f824fbab-28a7-4b13-87d3-24e120873455
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing RH personlig hygiejne for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-25
* activity.detail.code.coding[level2] = $FSIII#2912752c-2e9e-4702-8787-b45f73ff5b05 "RH Personlig hygiejne"
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) //Personlig pleje

Instance: 474e79f1-86b4-4e74-a122-da0b48bf8936
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing RH mobilitet for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-25
* activity.detail.code.coding[level2] = $FSIII#0b654911-f2b6-47d3-948b-3e9fb315b4c9 "RH Mobilitet"
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse, ok

// Followup encounters
Instance: 26116f56-3f78-4dbd-9bfc-8d83c0272a2a-v2
InstanceOf: klgateway-care-general-encounter
Description: "Encounter for a follow-up for Jens Hansen on February 24th, 2021"
Usage: #inline
* id = "26116f56-3f78-4dbd-9bfc-8d83c0272a2a"
* status = http://hl7.org/fhir/encounter-status#finished
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-02-24
* reasonReference[+] = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // personlig pleje
* reasonReference[+] = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // lave mad
* reasonReference[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde
* reasonReference[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse

Instance: 48c2b2c1-afbd-4d28-a51b-57b6837829e4
InstanceOf: klgateway-care-general-encounter
Description: "Encounter for a follow-up for Jens Hansen on March 10th, 2021"
Usage: #inline
* status = http://hl7.org/fhir/encounter-status#planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* period.start = 2021-03-10
* reasonReference[+] = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // personlig pleje
* reasonReference[+] = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // lave mad
* reasonReference[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde
* reasonReference[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse


// Followup Observations
Instance: a80bb9e0-5838-4bf1-924b-31f88aecc3c7
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on all conditions should be continued unchanged for Jens Hansen"
Usage: #inline
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(0533e773-c9e6-4cf5-b42d-f3ee07a9c624) // Jens Hansen
* focus[+] = Reference(38ea1a7f-251a-4817-aa4a-b59d556db92a) // personlig pleje
* focus[+] = Reference(80e7cd6e-f926-412c-b326-578f05af643e) // lave mad
* focus[+] = Reference(4f47118b-25a0-4998-8f71-86b1ce220f11) // Lave husligt arbejde
* focus[+] = Reference(1c13a997-628d-4d01-af7c-9adb7c19b2a6) // Mobilitet og bevægelse
* effectiveDateTime = 2021-02-24
* valueCodeableConcept = $FSIII#61b9a5c2-2ea7-45ad-82b8-53cbb513290e "Revisitation"

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
* deceasedBoolean = false