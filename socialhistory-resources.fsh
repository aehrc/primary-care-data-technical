// PROFILES 

Profile: AUPrimaryCareSocialHistoryList
Parent: List
Id: AUPrimaryCareSocialHistoryList
Title: "AU Primary Care Social History List"
Description: "This profile defines a social history list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSocialHistoryList"
* status = #current
* mode = #snapshot
* entry.item only Reference(http://hl7.org/fhir/StructureDefinition/Observation)
* entry.item MS
* emptyReason MS

