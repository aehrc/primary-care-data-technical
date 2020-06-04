// PROFILES 

Profile: AUPrimaryCareProblemList
Parent: List
Id: AUPrimaryCareProblemList
Title: "AU Primary Care Problem List"
Description: "This profile defines a problem list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareProblemList"
* status = #current
* mode = #snapshot
* entry.item only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareCondition)
* entry.item MS
* emptyReason MS

