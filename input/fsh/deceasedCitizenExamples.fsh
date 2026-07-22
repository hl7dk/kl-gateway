Alias: $FSIII = urn:oid:1.2.208.176.2.21

// ================================================================================================
// Scenario 1: Deceased citizen with planned intervention lacking period.end (Should fail validation)
// ================================================================================================

Instance: DeceasedReportWithoutPeriodEnd
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeceasedReportWithoutPeriodEnd"
Description: "Delivery report for deceased citizen with planned intervention lacking period.end (violates invariant)"
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* insert CitizenEntry(DeceasedCitizenWithoutPeriodEnd)
* insert PlannedInterventionEntry(PlannedInterventionWithoutPeriodEnd)

Instance: DeceasedCitizenWithoutPeriodEnd
InstanceOf: KLGatewayCareCitizen
Description: "Deceased citizen with no period.end on planned intervention"
Usage: #inline
* identifier.use = #official
* identifier.value = "0104909995"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value = "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* deceasedBoolean = true

Instance: PlannedInterventionWithoutPeriodEnd
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention without period.end for deceased citizen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(DeceasedCitizenWithoutPeriodEnd)
* period.start = 2020-08-14
* activity.detail.code.coding[level2] = $FSIII#17312894-b23f-43d9-9723-b725ac25d872 "Personlig hygiejne"
* activity.detail.status = #in-progress


// ================================================================================================
// Scenario 2: Deceased citizen with planned intervention having period.end (Should pass validation)
// ================================================================================================

Instance: DeceasedReportWithPeriodEnd
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeceasedReportWithPeriodEnd"
Description: "Delivery report for deceased citizen with planned intervention having period.end (complies with invariant)"
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* insert CitizenEntry(DeceasedCitizenWithPeriodEnd)
* insert PlannedInterventionEntry(PlannedInterventionWithPeriodEnd)

Instance: DeceasedCitizenWithPeriodEnd
InstanceOf: KLGatewayCareCitizen
Description: "Deceased citizen with period.end on planned intervention"
Usage: #inline
* identifier.use = #official
* identifier.value = "0104909989"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value = "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* deceasedBoolean = true

Instance: PlannedInterventionWithPeriodEnd
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention with period.end for deceased citizen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(DeceasedCitizenWithPeriodEnd)
* period.start = 2020-08-14
* period.end = 2020-08-20
* activity.detail.code.coding[level2] = $FSIII#17312894-b23f-43d9-9723-b725ac25d872 "Personlig hygiejne"
* activity.detail.status = #in-progress
