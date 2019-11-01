This profile contains the following variations from [AU Base Medication](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html):

1. <span style='color:green'> code </span> mustSupport
   * <span style='color:green'> code.coding:amt </span> slice mustSupport
1. <span style='color:green'> form </span> mustSupport
   * <span style='color:green'> form.coding:snomedForm </span> slice mustSupport
1. <span style='color:green'> ingredient.item[x]:itemCodeableConcept </span> mustSupport
   * <span style='color:green'> ingredient.item[x]:itemCodeableConcept:amtMP </span> slice mustSupport
1. <span style='color:green'> ingredient.amount </span> mustSupport
1. <span style='color:green'> Medication.extension:strengthText </span> mustSupport
