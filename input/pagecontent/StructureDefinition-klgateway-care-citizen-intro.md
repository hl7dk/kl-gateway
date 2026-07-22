### Scope and usage
Citizen is used to identify the subject of a delivery report by the personal id number (CPR-nummer) and the managing organization that acts as the custodian of the reported data. The personal id number must be an official Danish CPR-nummer without hyphen, and the SOR code must be an official SOR code.

The managing organization is given by its SOR code. For most municipalities this will be the code for then municipality, but if a municipality delivers services covered by FSIII in different departments using different record systems (thus having mulitple custodians) the SOR codes of the department that acts as custodian is used.

It is mandatory to report whether the citizen is deceased or not in `Patient.deceased`. If the citizen is deceased, all planned interventions in the delivery report must have an end date (`Patient.period.end`) populated.
Furthermore, the `Patient.active` attribute indicates whether the citizen's record/journal is active, it is used for error reporting purposes. Please look into [FejlrettelseNotatKLGateway.pdf](./FejlrettelseNotatKLGateway.pdf) for further information about error reporting.


### Conversions between Danish information model and FHIR-profile

Nedenstående tabel oversætter mellem de attributter, der er defineret i den fælleskommunale informationsmodel (FKI), definerer kort den enkelte attribut på dansk og specificerer, hvilke af FHIR-profilens atributter der skal bruges til specifikation af indholdet. 

{:class="grid"}
|   FKI-attribut      | Definition        | FHIR  |
| ------------- |-------------| -----|
|cpr-nummer|Officielt cpr-nummer på borgeren|identifier.value|
|Journalførende organisation|Organisation som ejer journalen med oplysninger|managingOrganization.identifier.value|
|borgerErDød|Indikation af om borgeren er død.|deceasedBoolean|
|harAktivJournal|Indikation af om borgerens journal er aktiv.|active|
