// PROFILES 

Profile: AUPrimaryCareFamilyMemberHistory
Parent: FamilyMemberHistory
Id: AUPrimaryCareFamilyMemberHistory
Title: "AU Primary Care Family Member History"
Description: "This profile defines a family member historyfor use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFamilyMemberHistory"
* status MS
* name MS
* deceasedBoolean MS
* deceasedDate MS
* deceasedAge MS
* relationship from http://aehrc.com/valueset/geneticfamilymember (extensible)
* relationship MS
* condition.code from https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1 (extensible)
* condition.code MS
* condition.contributedToDeath MS
* condition.onsetAge MS
* condition.onsetString MS
* condition.note.text MS
* dataAbsentReason from Family_History_Absent_Code_Valueset
* dataAbsentReason MS 
* patient MS
* note MS


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

