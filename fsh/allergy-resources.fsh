// PROFILES 


//The list resource profiled to contain allergyIntolerance resources...
Profile: AUPrimaryCareAllergyIntoleranceList
Parent: List
Id: AUPrimaryCareAllergyIntoleranceList
Title: "AU Primary Care Allergy Intolerance List"
Description: "This profile defines an allergy intolerance list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAllergyIntoleranceList"
* status = #current
* mode = #snapshot
* entry.item only Reference(AUPrimaryCareAllergyIntolerance)
* entry.item MS
* emptyReason MS
/*
Profile: AUPrimaryCareAllergyIntolerance
Parent: http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance
Id: AUPrimaryCareAllergyIntolerance
* reaction.substance.coding[snomedSubstance] MS

*/

//The AllergyIntolerance resource. Note that this constrains the AU primary profile (http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-allergyintolerance.html)
Profile: AUPrimaryCareAllergyIntolerance
Parent: http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance
//BaseType: AllergyIntolerance
Id: AUPrimaryCareAllergyIntolerance
Title: "AU Primary Care Allergy Intolerance"
Description: "This profile defines an allergy intolerance structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAllergyIntolerance"
* verificationStatus MS
* criticality MS
* patient only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient)
* recordedDate MS


//JS / ML please review intent of lines 39 -> 54

//The reaction substance must exist, and there must be at least one coding that is a snomed one that must be supported
* reaction.substance 1..1 MS
* reaction.substance from http://aehrc.com/valueset/reaction-substance (preferred)


//This slicing is needed to ensure that there is at least one snomed coding, as the VS binding is 'preferred'
* reaction.substance.coding ^slicing.discriminator.type = #pattern
* reaction.substance.coding ^slicing.discriminator.path = "system"
* reaction.substance.coding ^slicing.rules = #openAtEnd


* reaction.substance.coding contains 
    snomedSubstance 1..1 MS 

* reaction.substance.coding[snomedSubstance].system = "http://snomed.info/sct"
* reaction.substance.coding[snomedSubstance] ^short = "There must be a SNOMED coded slice"



//* reaction.substance MS

// * reaction.substance.coding[snomedSubstance] MS

// specify the ValueSet that the manifestation must come from
* reaction.manifestation from http://aehrc.com/valueset/reaction-manifestation (preferred)



/*  dh-todo - once the dependency has been sorted...
* reaction.substance.coding[snomedSubstance] MS

* reaction.manifestation MS
* reaction.manifestation.coding contains snomedManifestation 0..1
* reaction.manifestation.coding[snomedManifestation] from http://aehrc.com/valueset/reaction-manifestation (preferred)
* reaction.manifestation.coding[snomedManifestation] MS
*/
* reaction.note.text MS

