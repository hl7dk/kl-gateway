### Scope and usage
FollowUpObservation is used for documenting the result of a follow-up procedure, as documented by FSIII. Follow-ups are documented using this profile, whether they are documented by suppliers during an intervention, or documented by autorities, at planned follow-ups.

The profile has the Follow-up result in Observation.valueCodeableConcept.coding

The ObservationCode is mandatory, and fixed to a specific SNOMED CT code that signifies that this is an evaluation of a care plan (evaluering af indsats i bred forstand).

The status is in this implementation guide should either be final or entered-in-error.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|opfølgningskode|Klasse, der udtrykker at der evalueres på den indsats der er igangsat.|Observation.code.coding|
|opfølgningsresultatStruktureret|Struktureret resultat af en opfølgningen|Observation.valueCodeableConcept.coding|
|opfølgningssubjekt|Den borger, der er genstand for opfølgningen|Observation.subject|
|opfølgningstid|Det tidspunkt, hvor opfølgningen er foretaget|Observation.effectiveDateTime|
|opfølgningsstatus|Kode der udtrykker, hvor i sin proces, opfølgningen er|Observation.status|