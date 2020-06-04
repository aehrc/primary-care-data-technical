// PROFILES 

Profile: AUPrimaryCareFamilyMemberHistory
Parent: FamilyMemberHistory
Id: AUPrimaryCareFamilyMemberHistory
Title: "AU Primary Care Family Member History"
Description: "This profile defines a family member history structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFamilyMemberHistory"

* relationship from http://aehrc.com/valueset/geneticfamilymember (extensible)
* condition.code from https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1 (extensible)

Profile: AUPrimaryCareFamilyMemberHistoryList
Parent: List
Id: AUPrimaryCareFamilyMemberHistoryList
Title: "AU Primary Care Family Member History List"
Description: "This profile defines a family member history list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFamilyMemberHistoryList"
* status = #current
* mode = #snapshot
* entry.item only Reference(AUPrimaryCareFamilyMemberHistory)
* entry.item MS
* emptyReason MS

