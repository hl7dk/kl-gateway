### Scope and usage
In a Danish municipality setting, CompletedIntervention is used to describe what activities has been delivered (e.g. a visit from a nurse to a citizen home where wound care is delivered). A CompletedIntervention always describes actual activities of one encounter. It should not be confused with PlannedIntervention, which describes the intention of activities, typically for several encounters.

In this implementation guide it is only used for interventions delivered acute or otherwise not planned.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|leveretIndsatsstatus|Indikation af hvor i det kliniske forløb indsatsen er.|Procedure.status|
|leveretIndsatsSubjekt|Den borger som indsatsen er leveret til.|Procedure.subject|
|leveretIndsatsKode|Klasse, der udtrykker hvad den leverede indsats omhandler.|Procedure.code.coding|
|leveretIndsatsStart|Starttidspunkt for levering af indsatsen.|Procedure.performedDateTime|
