### Scope and usage
The PlannedIntervention may be instatiated whenever an intervention is planned for a citizen in Danish municipalities. PlannedIntervention is used for planning ahead. When the intervention is acute or otherwise not planned, use CompletedIntervention instead.

CarePlan.activity.detail.code.coding holds the intervention code from FSIII of the intervention that should be carried out.

It is important to distiguish correctly between the dates and times stated in the model. CarePlan.period.start is from when the PlannedIntervention is authorized (bevillingstid). The planned end-date is CarePlan.period.end, unless the date has already occured and the status is "completed", then it is the actual end-date.

CarePlan.status and CarePlan.intent are mandatory in the FHIR CarePlan resource. It is important that the intent is set to "order", when the intervention have been approved by municipality authorities (når bevillingen er sket). The status should active, revoked and completed plans. Note that the meaning of active is "ready to be acted upon", so it does not signify that the first activities have occured. CarePlan.activity.detail.status is also mandatory, and in this case it will suffice to use the values unknown and entered-in-error. Also use these for detail-status.

Use CarePlan:extension.FollowUpEncounter to explicitely state when follow-up on the intervention should occur.

CarePlan.activity.detail.reasonReference holds the link between conditions and interventions which are mandatory is FSIII, but optional in this context to allow reporting of interventions not yet linked to a reason. 

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens attributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|indsatsskode|Udtrykker hvilken klasse indsatsen tilhører.|CarePlan.activity.detail.code.coding|
|indsatsbevillingstid|Tidspunktet for hvornår indsatsen er bevilget|CarePlan.period.start|
|indsatsafslutningstid|Tidspunktet for hvornår indsatsen er afsluttet, eller planlægges afsluttet|CarePlan.period.end|
|indsatsstatus|Indikerer om indsatsplanen er klar til at blive handlet på, om dokumentationen repræsentere en fremtidig intention eller er historisk.|CarePlan.status|
|indsatshensigt|Indikerer niveauet af autorisation og hvor langt i planlægningen indsatsen er|CarePlan.intent|
|indsatssubjekt|Den borger som den planlagte indsats retter sig mod|CarePlan.subject|
|indsatsPlanlagtOpfølgning|Kontakt, hvor det planlægges at følge op på tilstanden |CarePlan:extension.FollowUpEncounter|
|indsatsbegrundelse|Tilstand som indsatsen rettes mod|CarePlan.activity.detail.reasonReference|
|indsatsAktivitetsstatus|Indikerer om indsatsen er igangsat, eller om den ikke er startet, eller er færdiggjort|CarePlan.activity.detail.status|