This profile contains the following variations from [AU Base Patient](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html):

1. at least one <span style='color:green'> name </span>
1. <span style='color:green'> Patient.extension:indigeousStatus </span> mustSupport
   * exactly one <span style='color:green'> indigenousStatus </span> as the ValueSet binding includes an empty value
   * <span style='color:green'> indigenousStatus.value[x] </span> restricted to CodableConcept
   * <span style='color:green'> indigenousStatus.value[x]:valueCodeableConcept </span> valueSet binding https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1 added with extensible binding strength
