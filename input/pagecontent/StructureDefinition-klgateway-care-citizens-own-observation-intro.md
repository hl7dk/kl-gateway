### Scope and usage
CitizensOwnObservation is used to document, performance level (udførelse) or importance level (betydning) as defined by FSIII. Note that each of the observations require its own instance of this model. The observation only makes sense linked to an already defined Condition or MatterOfInterest. Consequently, the focus-attribute is mandatory.

The code-attribute refers to either performance level or importance level using a required ValueSet, and the result is expressed in valueCodeableConcept, which is also bound to a required FSIII valueSet. Observation and value codes should be correctly matched, so that a performance-result is not used with a importance observation-code.

Notice that the status-attribute is mandatory. For normal use, just set to "final". If data is missing or another problem has occured, follow the FHIR guidance to populate the field correctly.

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter, der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|borgervurderingskode|Klasse som udtrykker, at der observeres på borgers evne til at udføre funktion eller aktivitet.|Observation.code.coding|
|borgervurderingsresultat|Klasse, der udtrykker resultatet af borgers vurdering.|Observation.valueCodeableConcept.coding|
|borgervurderingssubjekt|Den borger, som er genstand for vurdering.|Observation.subject|
|borgervurderingsfokus|Tilstand eller matter of interest, som denne borgervurdering er direkte observation på.|Observation.focus|
|borgervurderingstid|Tidspunkt for borgervurderingen.|Observation.effectiveDateTime|
|borgervurderingsstatus|Klasse der udtrykker, hvor i sin proces, borgervurderingen er.|Observation.status|