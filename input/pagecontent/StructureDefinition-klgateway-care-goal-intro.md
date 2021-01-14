### Scope and usage
In a Danish municipality setting, Goal is used to describe all the different kinds of goals and purposes defined by FSIII.

The goal itself is described using Goal.target and Goal.description. The target describes the severity related to functioning. Goal.target.meassure is used to express the method which in this profile is fixed to the code for funktionsevneniveau.

The FHIR Goal ressource has a mandatory attribute Goal.lifecycleStatus with a binding to a status ValueSet. Use "active" for active goals, "completed" for all goals that are either reached or no longer being persued, and entered-in-error for corrrections.

### Conversions between Danish information model and FHIR-profile
Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens attributter, der skal bruges til specifikation af indholdet.


{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|målkategori|Klasse, der udtrykker hvilket mål der er tale om.|Goal.category|
|målSværhedsgrad|En klasse, der udtrykker en tilstands mål for sværhedsgrad.|Goal.target|
|målbeskrivelse|Beskrivelse af hvad målet er.|Goal.description|
|målSubjekt|Den borger som målet er opstillet for.|Goal.subject|
|målrelateret|Den eller de Tilstande eller Oplysninger, der er relvant for målet.|Goal.addresses|
|målemetode|Den type af observationer der skal til for at følge med i dette mål.|Goal.target.measure|
|målstatus|Status for målet|Goal.lifecycleStatus|
