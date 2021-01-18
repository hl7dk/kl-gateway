## Scope and usage
The MatterOfInterestObservation is used in Danish Municipalities, and may be instantiated whenever information about the citizen is recorded, under the headings defined by Areas (FSIII områder). For each heading, a new instance of MatterOfInterestObservation is used. It is allowed to add a locally defined coding to the code if matters of interest are documented at finer granularity, e.g. at condition level.

Notice that the status-attribute is mandatory. For normal use, just set to "final", if data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly. In case of a correction use entered-in-error.

When a matter of interest is no longer in focus the values is set to B6 "Ikke relevant", otherwise the value shall not be set.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens attributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|oplysningskode|Klasse der udtrykker, hvilket fagligt emneområde, oplysningen tilhører. |Observation.code.coding|
|oplysningssværhedsgrad|Sværhedsgraden af de udfordringer som indhentede informationer observationer og vurderinger har belyst, organiseret under faglige emneområder|Observation.valueCodeableConcept.coding|
|oplysningssubjekt|Den borger som oplysningen omhandler|Observation.subject|
|oplysningstid|Det tidspunkt hvor oplysningen er vurderet.|Observation.effectiveDateTime|
|oplysningsstatus|Klasse der udtrykker, hvor i sin proces, oplysningen er.|Observation.status|