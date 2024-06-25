### Scope and usage
In a Danish municipality setting, CompletedIntervention is used to describe what activities has been delivered (e.g. a visit from a nurse to a citizen home where wound care is delivered). A CompletedIntervention always describes actual activities of one encounter. It should not be confused with PlannedIntervention, which describes the intention of activities, typically for several encounters.

In this implementation guide it is only used for interventions delivered acute or otherwise not planned at the time of delivery.

Procedure.subject references the citizen. Procedure.code.coding holds the intervention code from FSIII of the intervention that should be carried out. Start-time is documented in Procedure.performedDateTime. They are all mandatory.

It is optional to document the Condition which is the reason for delivering the CompletedIntervention. If it is present, register it in Procedure.reasonReference. The Encounter where the CompletedIntervention took place, can be referenced in Procedure.encounter. This is also optional.

Procedure.status holds a mandatory status attribute, use only values "completed" and "entered-in-error".

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|leveretIndsatsSubjekt|Den borger som indsatsen er leveret til.|Procedure.subject|
|leveretIndsatsKode|Klasse, der udtrykker hvad den leverede indsats omhandler.|Procedure.code.coding|
|leveretIndsatsStart|Starttidspunkt for levering af indsatsen.|Procedure.performedDateTime|
|leveretIndsatsbegrundelse|Tilstand som indsatsen rettes mod|Procedure.reasonReference|
|leveretIndsatsKontakt|Den kontakt hvor indsatsen leveres|Procedure.encounter|
|leveretIndsatsstatus|Indikation af hvor i det kliniske forløb indsatsen er.|Procedure.status|
