Alias: $FSIII = urn:oid:1.2.208.176.2.21

ValueSet: FSIIICareConditions
Id: FSIIICareConditions
Title: "FSIIICareConditions"
Description: "Conditions defined by FSIII for nursing and home care"
* ^experimental = false
* include codes from valueset ConditionCodesNursing
* include codes from valueset ConditionCodesHomeCare

ValueSet: ConditionCodesHomeCare
Title: "TilstandeKoderHjemmepleje"   
Description: "Danish municipality home care condition codes (funktionsevnetilstande)"
* ^experimental = false
* include codes from system $FSIII where concept descendent-of #43c2b7f0-5e55-4627-8fcf-bdaf5a9d84ac //Egenomsorg - J1 
* include codes from system $FSIII where concept descendent-of #1c850a09-aa49-4fae-9354-f932f13e030b //Praktiske opgaver - J2 
* include codes from system $FSIII where concept descendent-of #462f9352-0129-4d8e-8c75-a6dfed78ddcf //Mobilitet - J3
* include codes from system $FSIII where concept descendent-of #4571f168-a92a-4caf-8dc8-35f45c2a1cb4 //Mentale funktioner - J4 
* include codes from system $FSIII where concept descendent-of #86b53158-6d05-412e-ad55-2e1fa26359b3 //Samfundsliv - J5 - udgående

ValueSet: ConditionCodesNursing
Title: "TilstandeKoderSygepleje"
Description: "Danish municipality nursing condition codes"
* ^experimental = false
* include codes from system $FSIII where concept descendent-of #fa6aa904-d06e-4029-b4c4-13ead04ace27 //Funktionsniveau - I1 
* include codes from system $FSIII where concept descendent-of #55670b1e-7a36-46b2-8712-b7536237f22d // Bevægeapperatet - 	 I2
* include codes from system $FSIII where concept descendent-of #25dcedb3-7149-4ef9-a2c3-be30267441fb //Ernæring - 	 I3
* include codes from system $FSIII where concept descendent-of #1bb534f3-e526-41a9-b9c3-6157ea19c915 //Hud og slimhinder - 	 I4
* include codes from system $FSIII where concept descendent-of #3f00a76f-8e7b-4b13-80cc-f2ceef4e51d1 //Kommunikation - 	 I5
* include codes from system $FSIII where concept descendent-of #5bfe4bda-2358-41da-946e-1fdaa33d5fe8 //Psykosociale forhold -  I6
* include codes from system $FSIII where concept descendent-of #01150cdb-6098-48ce-bb61-60967f6bcc37 //Respiration og cirkulation - 	 I7
* include codes from system $FSIII where concept descendent-of #cc377732-7f14-49b7-8940-1aa07b8884e7 //Seksualitet - 	 I8
* include codes from system $FSIII where concept descendent-of #94e9c867-fbc8-4d35-8596-e6b8765b12e8  //Smerter og sanseindtryk - I9
* include codes from system $FSIII where concept descendent-of #8c539fd9-7f31-4b4e-8b30-8298c8ab640f //Søvn og hvile -  I10
* include codes from system $FSIII where concept descendent-of #9162d29a-1c7f-4585-8145-8fb4f1a999e3 //Viden og udvikling -  I11
* include codes from system $FSIII where concept descendent-of #045fa500-35b0-46b7-97dd-adb60888a8ea //Udskillelse af affaldsstoffer -  I12

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
* include codes from valueset NursingInterventionsFSIII
* include codes from valueset HomeCareInterventionsFSIII

ValueSet: NursingInterventionsFSIII
Title: "SygeplejeIndsatserFSIII"
Description: "Nursing interventions as described by FSIII" 
* ^experimental = false
* include codes from system FSIII where concept descendent-of #993d8f7b-fbed-4a78-90d9-6efbfa835114 //SUL § 138 G1
* include codes from system FSIII where concept descendent-of #ff47f955-3179-446f-b211-dc29de9456e3 //0-ydelser G2

ValueSet: HomeCareInterventionsFSIII
Title: "HjemmeplejeIndsatserFSIII"
Description: "Home Care Interventions as described by FSIII"
* ^experimental = false
* include codes from system FSIII where concept descendent-of #23a80ae9-ab88-48ed-a689-36bdd3cc6e41 //83 1,1
* include codes from system FSIII where concept descendent-of #3823d4cd-c38f-49f7-bb15-bd2488b07cd9 //83,1,2
* include codes from system FSIII where concept descendent-of #6cacf7a2-97ef-4981-a16a-338d571fc115 //83 1,3
* include codes from system FSIII where concept descendent-of #fe266687-9efd-4aea-a37c-49c88632d4f3 //83a personlig hjælp og pleje
* include codes from system FSIII where concept descendent-of #4bfff76f-cc05-4635-96e5-282f4abb2986 //83a praktisk hjælp
* include codes from system FSIII where concept descendent-of #90910722-a79d-4c35-8110-3adc988b206b //84,1 H3
* include codes from system FSIII where concept descendent-of #aeb52f84-c587-4e12-8793-69ebf83819f5 //84, 2 H4
* include codes from system FSIII where concept descendent-of #db582ef3-121c-4061-9569-3dbede361d47 //86, 1 H5
* include codes from system FSIII where concept descendent-of #ae759142-4006-454f-a585-ca02519e5579 //86, 2 H6
* include codes from system FSIII where concept descendent-of #6f9ed46f-6498-4567-9637-2324dbfaa0a0 //0-ydelser H7
* include codes from system FSIII where concept descendent-of #2a668eb0-25f1-4101-863c-11e81c4bf210 //ældrelovsindsats

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

ValueSet: FollowUpCodesFSIII
Title: "OpfølgningKoderFSIII"
Description: "Follow-up codes used in FSIII"
* ^experimental = false
* include codes from system $FSIII where concept descendent-of #ad78224f-b339-462c-9f2c-90b3120605cb //Resultat af opfølgning

ValueSet: SeveritiesFSIII 
Title: "FunktionsevneniveauFSIII"
Description: "Severities related to conditions in FSIII home care (funktionsniveau)"
* ^experimental = false
* include codes from system FSIII where concept descendent-of #2c02a704-deee-4878-9378-1167613b3da6 //funktionsniveau - B
