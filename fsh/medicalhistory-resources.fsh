// PROFILES 

Profile: AUPrimaryCareMedicalHistoryList
Parent: List
Id: AUPrimaryCareMedicalHistoryList
Title: "AU Primary Care Medical History List"
Description: "This profile defines a medical history list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedicalHistoryList"
* status = #current
* mode = #snapshot
* entry.item only Reference(AUPrimaryCareProcedure or AUPrimaryCareCondition)
* entry.item MS




