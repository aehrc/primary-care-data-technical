// PROFILES 

Profile: AUPrimaryCareCondition
Parent: http://hl7.org.au/fhir/StructureDefinition/au-condition
Id: AUPrimaryCareCondition
Title: "AU Primary Care Condition"
Description: "This profile defines a condition structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareCondition"
* extension contains https://aehrc.com/fhir/StructureDefinition/condition-course 0..1
* clinicalStatus MS
* severity MS
* code.coding contains snomedCondition 0..1
* code.coding[snomedCondition] MS
* bodySite from null (preferred)
* bodySite MS
* recordedDate MS
* note.text MS
