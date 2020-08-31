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


* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #openAtEnd

//slice the code (the substance that the allergt risk is to) to the AU valueset. Keep optional
* code.coding contains 
    substance 0..1 MS 

* code.coding[substance].system = "https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1"
* code.coding[substance] ^short = "SNOMED coded if available"

/*

Per Brett suggestion: All slicing on reaction.substance removed.
? do we want to retain an optional slicing, or remove substance altogether (to avoid confusion)

//The reaction substance must exist, and there must be at least one coding that is a snomed one that must be supported
* reaction.substance 1..1 MS
* reaction.substance from http://aehrc.com/valueset/reaction-substance (preferred)


//This slicing is needed to ensure that there is at least one snomed coding, as the VS binding is 'preferred'
* reaction.substance.coding ^slicing.discriminator.type = #pattern
* reaction.substance.coding ^slicing.discriminator.path = "system"
* reaction.substance.coding ^slicing.rules = #openAtEnd


//dh - 09-01 loosened from 1..1 as not all systems will have coded data
* reaction.substance.coding contains 
    snomedSubstance 0..1 MS 




* reaction.substance.coding[snomedSubstance].system = "http://snomed.info/sct"
* reaction.substance.coding[snomedSubstance] ^short = "There must be a SNOMED coded slice"

*/


// specify the ValueSet that the manifestation must come from
* reaction.manifestation from https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1 (preferred)
//dh - 09-01 changes per brett comment  * reaction.manifestation from http://aehrc.com/valueset/reaction-manifestation (preferred)


/*  dh-todo - once the dependency has been sorted...
* reaction.substance.coding[snomedSubstance] MS

* reaction.manifestation MS
* reaction.manifestation.coding contains snomedManifestation 0..1
* reaction.manifestation.coding[snomedManifestation] from http://aehrc.com/valueset/reaction-manifestation (preferred)
* reaction.manifestation.coding[snomedManifestation] MS
*/
* reaction.note.text MS

