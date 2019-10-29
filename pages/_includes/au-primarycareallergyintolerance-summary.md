This profile contains the following variations from [AU Base Allergy Intolerance](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-allergyintolerance.html):

1. <span style='color:green'> verificationStatus </span> mustSupport
   * ValueSet binding http://hl7.org/fhir/ValueSet/allergyintolerance-verification added
1. <span style='color:green'> criticality </span> mustSupport 
1. <span style='color:green'> code </span> mustSupport
1. <span style='color:green'> patient </span> (Reference: AUPrimaryCarePatient)
1. <span style='color:green'> assertedDate </span> mustSupport 
1. <span style='color:green'> reaction.substance.coding:snomedSubstance </span> slice mustSupport 
1. <span style='color:green'> reaction.manifestation.coding:snomedManifestation </span> slice mustSupport 
   * ValueSet binding http://aehrc.com/valueset/reaction-manifestation added
1. <span style='color:green'> reaction.note </span> mustSupport 
