This profile contains the following variations from [AU Base Medication Statement](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medicationstatement.html):

1. <span style='color:green'> medication.coded.coding:amt</span> slice mustSupport
1. <span style='color:green'> reasonCode </span> mustSupport
   * <span style='color:green'> reasonCode.coding:snomedReasonCode </span> slice mustSupport
   * ValueSet binding http://aehrc.com/valueset/clinical-indication-for-medication added
1. <span style='color:green'> note </span> mustSupport
1. <span style='color:green'> dosage.additionaInstruction </span> mustSupport
   * ValueSet binding with extensible binding strength
1. <span style='color:green'> dosage.timing.repeat.duration </span> mustSupport
1. <span style='color:green'> dosage.timing.repeat.frequency </span> mustSupport
1. <span style='color:green'> dosage.route </span> mustSupport
   * ValueSet binding https://healthterminologies.gov.au/fhir/ValueSet/route-of-administration-1 added with extensible binding strength
