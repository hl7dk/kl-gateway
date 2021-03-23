### Scope and usage
The Condition may be instatiated whenever a condition is found and registered for citizens in Danish municipalities.

Conditions are always defined by Condition.code, which may originate from FSIII.

Condition.severity.coding has as valid values the funtional level (FSIII funktionsniveau).

Condition.recordedDate is the date where the condition was first recorded, NOT the date where the problem first known to be present.

Condition.clinicalStatus should be populated with the value "active" if the citizen has the condition, and inactive if the citizen no longer have the condition. In most other use cases, Condition.verificationStatus should be "confirmed". clinicalStatus is mandatory, and it is a good idea to always provide the verificationStatus. If not populated, the condition is assumed to be "confirmed".

Conditions are related to a professional context (through its code). These are the different contexts in which codelists of conditions are formulated:

* Home nursing SUL §138 (FSIII)
* Home care SEL §83, §83a, §84, §86 (FSIII)

Condition.category is, in this implementation, used as a way to determine whether the condition is in focus in a professional context. In focus means that this condition is solely or partially the reason why interventions are performed in the professional context. If a condition is "in focus" Condition.category is populated with the value "problem-list-item". An empty Condition.category means that the focus have not been considered (if it is the first version of a condition). If the latter is the case, it might be difficult to determine whether a condition have been ended.

Ending a condition means that the condition falls out of focus in a professional context e.g. if the citizen moves, or another professional group takes over the care for the citizen. This does not necessarily means the citizen no longer has the condition. When a condition is ended, the Condition.category looses its "problem-list-item" flag. The idea is to state that from a citizen viewpoint the condition has not changed, but in this professional context it is no longer in focus.

Condition follow-up is documented using Condition.extension:followUpEncounter, which points to a future encounter, with Encounter.type= "opfølgning".

### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|tilstandskode|Udtrykker hvilken klasse tilstanden tilhører.|Condition.code.coding|
|tilstandsstatus|Klasse der udtrykker en status for om tilstanden er til stede eller ej.|Condition.clinicalStatus og Condition.verificationStatus|
|tilstandsoprettelsestid|tidsangivelse for hvornår tilstanden først blev oprettet i journalen|Condition.recordedDate|
|tilstandsplanlagtOpfølgning|Kontakt, hvor det planlægges at følge op på tilstanden |Condition.extension:followUpEncounter|
|tilstandssubjekt|Den borger som har tilstanden|Condition.subject|
|tilstandsfokus|Klasse der udtrykker, om en faggruppe har tilstanden i fokus for sine indsatser|Condition.category.coding|