// PROFILES 

/*
// todo dh should there be a VS for the most common social media terms? eg smoker, heavy alcohol, obese...
Profile: AUPrimaryCareSocialHistoryList
Parent: List
Id: AUPrimaryCareSocialHistoryList
Title: "AU Primary Care Social History List"
Description: "This profile defines a social history list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSocialHistoryList"
* status = #current
* mode = #snapshot
* entry.item only Reference(Observation)
* entry.item MS
* emptyReason MS
*/

Profile: AUPrimaryCareSmokingStatus
Parent: http://hl7.org.au/fhir/StructureDefinition/au-smokingstatus
Id: AuPrimaryCareSmokingStatus
Title: "AU Primary Care Smoking Status"
Description: "This profile defines core information requirements for smoking status in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSmokingStatus"
* subject only Reference(AUPrimaryCarePatient)
* subject MS
* value[x] 1..1 MS

