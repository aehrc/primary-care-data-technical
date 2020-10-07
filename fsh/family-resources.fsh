// PROFILES 

Profile: AUPrimaryCareFamilyMemberHistory
Parent: FamilyMemberHistory
Id: AUPrimaryCareFamilyMemberHistory
Title: "AU Primary Care Family Member History"
Description: "This profile defines a basic family member history note that for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFamilyMemberHistory"
* status MS
* dataAbsentReason from Family_History_Absent_Code_Valueset
* dataAbsentReason MS 
* note MS

Profile: AUPrimaryCareFamilyMemberHistoryR2
Parent: AUPrimaryCareFamilyMemberHistory
Id: AUPrimaryCareFamilyMemberHistoryR2
Title: "AU Primary Care Family Member History R2"
Description: "This profile defines a family member history structure for use in an Australian primary care practice-to-practice record transfer context."
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
* entry.item only Reference(AUPrimaryCareFamilyMemberHistory or AUPrimaryCareFamilyMemberHistoryR2)
* entry.item MS
* emptyReason MS

