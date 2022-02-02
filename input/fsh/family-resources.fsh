// PROFILES 

Profile: AUPrimaryCareFamilyMemberHistory
Parent: FamilyMemberHistory
Id: AUPrimaryCareFamilyMemberHistory
Title: "AU Primary Care Family Member History"
Description: """
Summary or persistent information about significant health and related issues in family members.

**Usage**

Use to record a summary of information about problems or diagnoses found in family members. This information may be used to contribute to the identification of a current health problem, assessment of future risk from familial problems or conditions, or to initiate preventive health activities.

Traditionally the scope of family history has been focused on genetic factors or biomarkers as indicators of risk or potential risk. The scope of this item includes both recording of problems or diagnoses that have an inheritable origin as well as those that are not directly inheritable but influenced by the domestic setting, including psycho-social or environmental factors. Examples include exposure to toxins in the family environment, domestic violence, sexual abuse, alcoholism and other addictions.

Non-genetic family members can include adopted or long term fostered children, those related by marriage, or other unrelated individuals who participate in the regular life and influence of the family.

It may be necessary to identify each family member specifically and not just by the relationship to the individual. For example, while there will be only one maternal grandmother, there may be many female maternal cousins. This may be required to ensure that a pedigree chart is accurate. It will also enable accurate amendments to the record for each identified family member. If the record is private and will not be shared, for reasons of clarity it may be preferable to record the relative's actual name. If the record, or part of the record, is to be shared, it may be more appropriate for the family member to be identified by a unique label or alias.

Record as a single instance in a health record; updated and revised over time as a new version.
"""
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
* obeys fm-content-0

Invariant:  fm-content-0
Description: "Either condition or note should be present"
Expression: "condition.exists() or note.exists()"
Severity:   #error


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

