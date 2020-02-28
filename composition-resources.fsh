// PROFILES 

Profile: AUPrimaryCareComposition
Parent: http://hl7.org.au/fhir/StructureDefinition/au-composition
Id: AUPrimaryCareComposition
Title: "AU Primary Care Composition"
Description: "This profile defines a composition structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareComposition"
* status = #final
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "code"
* type.coding ^slicing.rules = #open
* type.coding contains loincMedicalRecords 0..1
* type.coding[loincMedicalRecords] MS
* type.coding[loincMedicalRecords].system = "http://loinc.org"
* type.coding[loincMedicalRecords].code = #11503-0
* type.coding[loincMedicalRecords].display = "Medical Records"
* subject only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient)
* encounter 0..0
* title = "Practice to Practice Patient Summary"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
* section 1..*
* section contains medicalHistoryList 1..1
* section[medicalHistoryList].code.coding.system = "http://loinc.org"
* section[medicalHistoryList].code.coding.code = #11348-0
* section[medicalHistoryList].mode = #snapshot
* section[medicalHistoryList].entry only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedicalHistoryList | https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareProcedureList | https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareProblemList)
* section[medicalHistoryList].entry MS
* section contains adverseReactionList 1..1
* section[adverseReactionList].code.coding.system = "http://loinc.org"
* section[adverseReactionList].code.coding.code = #48765-2
* section[adverseReactionList].mode = #snapshot
* section[adverseReactionList].entry only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAllergyIntoleranceList)
* section[adverseReactionList].entry MS
* section contains vaccinationList 1..1
* section[vaccinationList].code.coding.system = "http://loinc.org"
* section[vaccinationList].code.coding.code = #41291-6
* section[vaccinationList].code.coding.display = "Immunization"
* section[vaccinationList].mode = #snapshot
* section[vaccinationList].entry only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareImmunisationList)
* section[vaccinationList].entry MS
* section contains medicineList 1..1
* section[medicineList].code.coding.system = "http://loinc.org"
* section[medicineList].code.coding.code = #10160-0
* section[medicineList].mode = #snapshot
* section[medicineList].entry only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedicineList)
* section[medicineList].entry MS
* section contains clinicalSynopsis 0..1
* section[clinicalSynopsis].code.coding.userSelected = false
* section[clinicalSynopsis].code.coding.system = "http://loinc.org"
* section[clinicalSynopsis].code.coding.code = #11329-0
* section[clinicalSynopsis].code.coding.display = "History general"
* section[clinicalSynopsis].text MS
* section contains familyHistory 0..1
* section[familyHistory].code.coding.code = #10157-6
* section[familyHistory].mode = #snapshot
* section[familyHistory].entry MS
* section contains socialHistory 0..1
* section[socialHistory].entry only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSocialHistoryList)
* section[socialHistory].entry MS

