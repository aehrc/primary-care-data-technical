// PROFILES 

Profile: AUPrimaryCareCondition
Parent: http://hl7.org.au/fhir/StructureDefinition/au-condition
Id: AUPrimaryCareCondition
Title: "AU Primary Care Condition"
Description: "This profile defines a condition structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareCondition"

* extension contains ConditionCourse named ConditionCourse 0..1     //an external extension

* clinicalStatus MS
* severity MS

//There must be a SNOMED code. Others allowed...
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains snomedCondition 0..1
* code.coding[snomedCondition] MS
* code.coding[snomedCondition].system = $SNOMED (exactly)


//dh - fixed null...
* bodySite from https://healthterminologies.gov.au/fhir/ValueSet/body-site-1 (preferred)
* bodySite MS
* recordedDate MS
* note.text MS

Extension: ConditionCourse
Id: condition-course
Title: "Course of the Condition"
Description: "The clinical course of a condition"
* value[x] only code
* valueCode from Course_ValueSet (required)

