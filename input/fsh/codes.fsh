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

ValueSet: KLGatewayCareMatterOfInterestValues
Id: KLGatewayCareMatterOfInterestValues
Title: "KLGatewayCareMatterOfInterestValues"
Description: "Values of Matters of Interests (areas)"
* ^experimental = false
* $FSIII#B6 "Ikke relevant"

ValueSet: EncounterClassCodes
Title: "KontaktKlasseKoder"
Description: "Codes to describe the mode of delivery of an encounter"
* ^experimental = false
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-ActEncounterCode
* $KLCommonCodes#1b55a4b0-1156-4f58-b2df-b5c6014d9048 //"Telefonisk" KLCommonCareSocialCodes
* $KLCommonCodes#124be95d-6924-4609-9d2a-e7c73ae3ab3d //"Skærmbesøg" KLCommonCareSocialCodes