### Scope and usage
The Encounter may be instantiated whenever citizens and practitioners meet in a Danish municipality context. In this implementation guide it is only used for follow-up on conditions and interventions. The Encounter.type.coding attribute is thus the fixed code for "opfølgning".

It is important in FSIII to be able to express follow-up encounters. In the planning state, these are documented by setting Encounter.status = "planned", and Encounter.type.coding = "opfølgning". When a followUp has been performed, the Encounter.status is changed to "finished".

Encounter.class is mandatory in FHIR. In this implementation guide encounter have the fixed code 'HH' home health.

Encounter.period.start is mandatory and contains the follow-up date. Note that "time of day" is optional. 

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|kontaktstatus|Klasse der indikerer om kontakten er igangværende, eller om dokumentationen repræsentere en fremtidig intention eller er historisk|Encounter.status|
|kontakttype|Klasse der udtrykker typen af aktivitet der gennemføres ved kontakten|Encounter.type.coding|
|kontaktstart|Kontaktens start, eller planlagte start|Encounter.period.start|
|kontaktsubjekt|Den borger kontakten vedrører|Encounter.subject|
|kontaktklasse|Klasse, der udtrykker en generel kategori for kontakten, som rækker ud over den kommunale kontekst.|Encounter.class|