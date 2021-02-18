RuleSet: CitizenEntry(instance)
* entry[citizen].fullUrl = "Patient/{instance}"
* entry[citizen].resource = {instance}

RuleSet: ConditionEntry(instance)
* entry[condition][+].fullUrl = "Condition/{instance}"
* entry[condition][=].resource = {instance}

RuleSet: GoalEntry(instance)
* entry[goal][+].fullUrl = "Goal/{instance}"
* entry[goal][=].resource = {instance}

RuleSet: EncounterEntry(instance)
* entry[encounter][+].fullUrl = "Encounter/{instance}"
* entry[encounter][=].resource = {instance}

RuleSet: PlannedInterventionEntry(instance)
* entry[plannedIntervention][+].fullUrl = "CarePlan/{instance}"
* entry[plannedIntervention][=].resource = {instance}
