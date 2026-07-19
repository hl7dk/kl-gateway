Alias: $FSIII = urn:oid:1.2.208.176.2.21

ValueSet: FSIIICareConditions
Id: FSIIICareConditions
Title: "FSIIICareConditions"
Description: "Conditions defined by FSIII for nursing and home care"
* ^experimental = false
* include codes from valueset http://fhir.kl.dk/term/ValueSet/KLConditionCodesNursing
* include codes from valueset http://fhir.kl.dk/term/ValueSet/KLConditionCodesHomeCare

ValueSet: FSIIICareGoalTypes
Id: FSIIICareGoalTypes
Title: "FSIIICareGoalTypes"
Description: "Goal Types defined by FSIII for nursing and home care"
* ^experimental = false
* $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4

ValueSet: FSIIICareInterventions
Id: FSIIICareInterventions
Title: "FSIIICareInterventions"
Description: "Interventions defined by FSIII for nursing and home care"
* ^experimental = false
* include codes from valueset http://fhir.kl.dk/term/ValueSet/KLNursingInterventionsFSIII
* include codes from valueset http://fhir.kl.dk/term/ValueSet/KLHomeCareInterventionsFSIII

ValueSet: FSIIICareMatterOfInterests
Id: FSIIICareMatterOfInterests
Title: "FSIIICareMatterOfInterests"
Description: "Matters of Interests (areas) defined by FSIII for nursing and home care"
* ^experimental = false
* include codes from valueset http://fhir.kl.dk/term/ValueSet/KLNursingAreasFSIII
* include codes from valueset http://fhir.kl.dk/term/ValueSet/KLHomeCareAreasFSIII

CodeSystem: LocallyDefinedInterventions
Id: LocallyDefinedInterventions
Title: "LocallyDefinedInterventions"
Description: "Coding system to indicate a code defined locally in the managing organization"
* ^content = #fragment
* ^experimental = false
* ^caseSensitive = true

// CodeSystem: TemporaryCodes
// Id: TemporaryCodes
// Title: "TemporaryCodes"
// Description: "Coding system to be used until formal dependency of a new version of KL-tem can be established"
// * ^content = #fragment
// * ^experimental = false
// * ^caseSensitive = true
// * #4530b499-d74b-4d2e-9df9-247047fb231d "udførelse af indsats" "Indsats udført ved kontakt"

ValueSet: KLGatewayCareEncounterTypes
Id: KLGatewayCareEncounterTypes
Title: "GatewayKontaktTyper"
Description: "Values for encounter types used in the gateway"
* ^experimental = false
* $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* $KLCommonCodes#4530b499-d74b-4d2e-9df9-247047fb231d


ValueSet: KLGatewayCareMatterOfInterestValues
Id: KLGatewayCareMatterOfInterestValues
Title: "KLGatewayCareMatterOfInterestValues"
Description: "Values of Matters of Interests (areas)"
* ^experimental = false
* $FSIII#B6
* $FSIII#d7ff926a-4955-478f-b300-0b0ec0785013

ValueSet: EncounterClassCodes
Title: "KontaktKlasseKoder"
Description: "Codes to describe the mode of delivery of an encounter"
* ^experimental = false
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-ActEncounterCode
* $KLCommonCodes#1b55a4b0-1156-4f58-b2df-b5c6014d9048 //"Telefonisk" KLCommonCareSocialCodes
* $KLCommonCodes#124be95d-6924-4609-9d2a-e7c73ae3ab3d //"Skærmbesøg" KLCommonCareSocialCodes

ValueSet: DeliveryTypes
Id: DeliveryTypes
Title: "DeliveryTypes"
Description: "The delivery context types"
* ^experimental = false
* include codes from system $KLCommonCodes where concept descendent-of #3f79cee2-b148-4f2c-9cbd-387820e74685