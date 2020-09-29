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
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS

Profile: AUPrimaryCareSociaSummary
Parent: ClinicalImpression
Id: AuPrimaryCareSocialSummary
Title: "AU Primary Care Social Summary"
Description: "This profile defines core information requirements for a social history description in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSocialSummary"
* status MS
* code = $SNOMED#160476009
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effectiveDateTime MS
* summary 1..1 MS




