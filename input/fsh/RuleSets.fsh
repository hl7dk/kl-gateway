RuleSet: CitizenEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/Patient/{instance}"
* entry[=].resource = {instance}

RuleSet: ConditionEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/Condition/{instance}"
* entry[=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: ConditionEntryVersion(instance, version)
* entry[+].fullUrl = "https://test.fhir.dk/Condition/{instance}"
* entry[=].resource = {instance}-{version}

RuleSet: GoalEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/Goal/{instance}"
* entry[=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: GoalEntryVersion(instance, version)
* entry[+].fullUrl = "https://test.fhir.dk/Goal/{instance}"
* entry[=].resource = {instance}-{version}

RuleSet: CitizensOwnObservationEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/Observation/{instance}"
* entry[=].resource = {instance}

RuleSet: PlannedInterventionEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/{instance}"
* entry[=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: PlannedInterventionEntryVersion(instance, version)
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/{instance}"
* entry[=].resource = {instance}-{version}

RuleSet: CompletedInterventionEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/Procedure/{instance}"
* entry[=].resource = {instance}

RuleSet: EncounterEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/{instance}"
* entry[=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: EncounterEntryVersion(instance, version)
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/{instance}"
* entry[=].resource = {instance}-{version}

RuleSet: FollowUpObservationEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/Observation/{instance}"
* entry[=].resource = {instance}

RuleSet: MatterOfInterestEntry(instance)
* entry[+].fullUrl = "https://test.fhir.dk/Observation/{instance}"
* entry[=].resource = {instance}
