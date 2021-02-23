RuleSet: CitizenEntry(instance)
* entry[citizen].fullUrl = "Patient/{instance}"
* entry[citizen].resource = {instance}

RuleSet: ConditionEntry(instance)
* entry[condition][+].fullUrl = "Condition/{instance}"
* entry[condition][=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: ConditionEntryVersion(instance, version)
* entry[condition][+].fullUrl = "Condition/{instance}"
* entry[condition][=].resource = {instance}-{version}

RuleSet: GoalEntry(instance)
* entry[goal][+].fullUrl = "Goal/{instance}"
* entry[goal][=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: GoalEntryVersion(instance, version)
* entry[goal][+].fullUrl = "Goal/{instance}"
* entry[goal][=].resource = {instance}-{version}

RuleSet: CitizensOwnObservationEntry(instance)
* entry[citizensOwnObservation][+].fullUrl = "Observation/{instance}"
* entry[citizensOwnObservation][=].resource = {instance}

RuleSet: PlannedInterventionEntry(instance)
* entry[plannedIntervention][+].fullUrl = "CarePlan/{instance}"
* entry[plannedIntervention][=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: PlannedInterventionEntryVersion(instance, version)
* entry[plannedIntervention][+].fullUrl = "CarePlan/{instance}"
* entry[plannedIntervention][=].resource = {instance}-{version}

RuleSet: EncounterEntry(instance)
* entry[encounter][+].fullUrl = "Encounter/{instance}"
* entry[encounter][=].resource = {instance}

RuleSet: FollowUpObservationEntry(instance)
* entry[followUpObservation][+].fullUrl = "Observation/{instance}"
* entry[followUpObservation][=].resource = {instance}

RuleSet: MatterOfInterestEntry(instance)
* entry[matterOfInterestObservation][+].fullUrl = "Observation/{instance}"
* entry[matterOfInterestObservation][=].resource = {instance}
