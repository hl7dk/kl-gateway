Instance: klgateway
InstanceOf: CapabilityStatement
Usage: #definition
* name = "RestServer"
* status = #active
* date = "2023-06-08T00:29:49.294+02:00"
* description = "The Care Gateway (henceforth gateway) is a service that recieves care delivery reports from the municipalities and asynchronously forwards them other data sources such as FLIS and SEI2. Care delivery reports follows the FHIR format specified in the KL-Gateway FHIR Implementation Guide (IG)."
//* publisher = "Not provided"
* kind = #instance
* software.name = "Trifork Gateway FHIR Server"
* software.version = "6.2.5"
* implementation.description = "Trifork Gateway FHIR Server"
//* implementation.url = "http://localhost:8080/fhir"
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #json
* format[+] = #application/x-turtle
* format[+] = #ttl
* format[+] = #html/json
* format[+] = #html/xml
* format[+] = #html/turtle
* rest.mode = #server
* rest.resource[0].type = #Bundle
* rest.resource[=].profile = "http://gateway.kl.dk/1.0/StructureDefinition/klgateway-care-delivery-report"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchInclude[+] = "Bundle:composition"
* rest.resource[=].searchInclude[+] = "Bundle:message"
* rest.resource[=].searchRevInclude[0] = "Bundle:composition"
* rest.resource[=].searchRevInclude[+] = "Bundle:message"
* rest.resource[=].searchParam[0].name = "_content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search the contents of the resource's data using a fulltext search"
* rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search the contents of the resource's data using a filter"
* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Return resources linked to by the given target"
* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The ID of the resource"
* rest.resource[=].searchParam[+].name = "_language"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The language of the resource"
* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Only return resources which were last updated as specified by the given range"
* rest.resource[=].searchParam[+].name = "_profile"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "Search for resources which have the given profile"
* rest.resource[=].searchParam[+].name = "_security"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for resources which have the given security labels"
* rest.resource[=].searchParam[+].name = "_source"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "Search for resources which have the given source value (Resource.meta.source)"
* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search for resources which have the given tag"
* rest.resource[=].searchParam[+].name = "_text"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Search the contents of the resource's narrative using a fulltext search"
* rest.resource[=].searchParam[+].name = "composition"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The first resource in the bundle, if the bundle type is \"document\" - this is a composition, and this parameter provides access to search its contents"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Persistent identifier for the bundle"
* rest.resource[=].searchParam[+].name = "message"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The first resource in the bundle, if the bundle type is \"message\" - this is a message header, and this parameter provides access to search its contents"
* rest.resource[=].searchParam[+].name = "timestamp"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the bundle was assembled"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection"
* rest.resource[+].type = #OperationDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/OperationDefinition"
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchRevInclude[0] = "Bundle:composition"
* rest.resource[=].searchRevInclude[+] = "Bundle:message"