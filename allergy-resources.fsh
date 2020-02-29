// PROFILES 

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

Profile: AUPrimaryCareAllergyIntolerance
Parent: http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance
Id: AUPrimaryCareAllergyIntolerance
Title: "AU Primary Care Allergy Intolerance"
Description: "This profile defines an allergy intolerance structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAllergyIntolerance"
* verificationStatus MS
* criticality MS
* patient only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient)
* recordedDate MS
* reaction.substance 1..1
* reaction.substance MS
* reaction.substance.coding ^slicing.discriminator.type = #value
* reaction.substance.coding ^slicing.discriminator.path = "system"
* reaction.substance.coding ^slicing.rules = #open
* reaction.substance.coding contains snomedSubstance 0..1
* reaction.substance.coding[snomedSubstance] MS
* reaction.manifestation MS
* reaction.manifestation.coding ^slicing.discriminator.type = #value
* reaction.manifestation.coding ^slicing.discriminator.path = "system"
* reaction.manifestation.coding ^slicing.rules = #open
* reaction.manifestation.coding contains snomedManifestation 0..1
* reaction.manifestation.coding[snomedManifestation] from http://aehrc.com/valueset/reaction-manifestation (preferred)
* reaction.manifestation.coding[snomedManifestation] MS
* reaction.note.text MS

