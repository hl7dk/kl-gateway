CodeSystem: LocallyDefinedInterventions
Id: LocallyDefinedInterventions
Description: "Coding system to indicate a code defined locally in the managing organization"
* ^content = #fragment
* ^experimental = false
* ^caseSensitive = false

CodeSystem: Tempcodes
Id: Tempcodes
Description: "Temporary codes for the nursing add-on project: Will be included in FSIII on a later date"
* ^experimental = false
* ^caseSensitive = false
* #d5880bca-2edb-41a3-9c7e-c894483217fd "Hjælp til KOL-hjemmemonitorering"
* #6a6893ac-93b3-46ba-80b4-ef52f18f4345 "Hjælp til hjerte-hjemmemonitorering"
* #8e11ab6a-b80d-4333-96ec-89c34beb1a9a "Hjælp til diabetes-hjemmemonitorering"
* #f86df82b-8b39-490c-8875-4b2045349158 "Hjælp til hjemmemonitorering af sår"
* #4963b1e7-4ed0-42e5-923d-eb002950d377 "Hjælp til hjemmemonitorering, andre"
* #b6523d5f-8cd5-4dca-9341-8c7b54f4d7cb "Ordinering af medicin"
* #0207d32b-6808-46f4-884f-d24090e86f69 "Selvstændigt virksomhedsområde"

ValueSet: FSIIICareInterventions2
Id: FSIIICareInterventions2
Description: "SIIICareInterventions2 temporaryValueset"
* include codes from valueset FSIIICareInterventions 
* Tempcodes#d5880bca-2edb-41a3-9c7e-c894483217fd "Hjælp til KOL-hjemmemonitorering"
* Tempcodes#6a6893ac-93b3-46ba-80b4-ef52f18f4345 "Hjælp til hjerte-hjemmemonitorering"
* Tempcodes#8e11ab6a-b80d-4333-96ec-89c34beb1a9a "Hjælp til diabetes-hjemmemonitorering"
* Tempcodes#f86df82b-8b39-490c-8875-4b2045349158 "Hjælp til hjemmemonitorering af sår"
* Tempcodes#4963b1e7-4ed0-42e5-923d-eb002950d377 "Hjælp til hjemmemonitorering, andre"
* Tempcodes#b6523d5f-8cd5-4dca-9341-8c7b54f4d7cb "Ordinering af medicin"