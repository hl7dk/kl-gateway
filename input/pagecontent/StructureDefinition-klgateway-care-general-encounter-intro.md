### Scope and usage
The Encounter may be instantiated whenever citizens and practitioners meet in a Danish municipality context. In this implementation guide it is only used for follow-up on conditions and interventions. The Encounter.type.coding attribute is thus the fixed code for "opfølgning".

It is important in FSIII to be able to express follow-up encounters. In the planning state, these are documented by setting Encounter.status = "planned", and Encounter.type.coding = "opfølgning". 

Encounters which are finished may reported. This can be especially relevant for Encounter.type.coding = "opfølgning" and Encounter.type.coding = "udførelse af planlagt indsats". Use Encounter.status 'finished'.

To report errors use status 'entered-in-error'

Encounter.class is mandatory in FHIR. In Danish municipalities the values are used as follows.
* Visits in citizens homes have the code 'HH' Home health, the code is also used for services that are not strictly health related e.g. help with cleaning. This code is also used, even if the activities stretch outside the citizens residence e.g. a physiotherapist that want to see a citizen walk outside, or a social worker helping with shopping activities.
* Sessions where the citizens visit municipality facilities e.g. for training or health prevention have the code 'AMB' Ambulatory.
* Encounters delivered as a screen visit should be registered as 'Skærmbesøg'.
* Encounters delivered using a phone should be registered as 'Telefonisk'

The time of the encounter is documented in Encounter.period.start and Encounter.periode.end, and both Encounter.period.start is mandatory. Only planned time is mandatory to report. There is no expectation that the staff update the time if they finish a little earlier or a little later. Time of day is also not mandatory. Encounter.periode.end and time of day is encouraged when reporting on finished Encounters.

Encounters can be related to the PlannedIntervention on which they are a delivery. Use Encounter.extension[basedOnCarePlan]. Encounters can also be related to the condition or conditions which are the reason for having the encounter. This is used for documenting the condition follow-up encounter. Use Encounter.reasonReference

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificere hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|borgerkontaktstatus|Klasse der indikerer om kontakten er igangværende, eller om dokumentationen repræsentere en fremtidig intention eller er historisk|Encounter.status|
|kontakttype|Klasse der udtrykker typen af aktivitet der gennemføres ved kontakten|Encounter.type.coding|
|borgerkontaktklasse|Klasse, der udtrykker en generel kategori for kontaktens leveringsform.|Encounter.class|
|borgerkontaktstart|Kontaktens start, eller planlagte start|Encounter.period.start|
|borgerkontaktslut|Kontaktens sluttidspunkt, eller planlagte sluttidspunkt|Encounter.period.end|
|borgerkontaktsubjekt|Den borger kontakten vedrører|Encounter.subject|
|borgerkontaktBaseretPå|Den eller de indsatser, der er grunden til at denne kontakt udføres|Encounter.extension:basedOnCarePlan|
|borgerkontaktTilstand|Den eller de tilstande, der er grunden til at denne kontakt udføres|Encounter.reasonReference|