// PROFILES 

Profile: AUPrimaryCareComposition
Parent: http://hl7.org.au/fhir/StructureDefinition/au-composition
Id: AUPrimaryCareComposition
Title: "AU Primary Care Composition"
Description: "This profile defines a composition structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareComposition"
* status = #final

//* type.coding ^slicing.discriminator.type = #value
//* type.coding ^slicing.discriminator.path = "system"

/*
//Slice the type so that it must have the loinc code 11503-0 - but can have others
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "code"
* type.coding ^slicing.rules = #open

* type.coding contains loincMedicalRecords 1..1
* type.coding[loincMedicalRecords] MS
* type.coding[loincMedicalRecords].system = "http://loinc.org"
* type.coding[loincMedicalRecords].code = #11503-0 (exactly)
* type.coding[loincMedicalRecords].display = "Medical Records"

*/
* type = http://loinc.org#11503-0 "Medical Records"
* subject 1..1      //there must be a subject
* subject only Reference(AUPrimaryCarePatient)
* encounter 0..0
* title = "Practice to Practice Patient Summary"

//discriminator for the sections - slice on the section code...
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open

* section contains 
    clinicalSynopsis 0..1 and
    medicalHistoryList 1..1 and 
    adverseReactionList 1..1 and
    vaccinationList 1..1 and
    medicineList 1..1 and
    socialHistory 0..1 and
    familyHistoryList 0..1 and
    pregnancyHistory 0..1 and 
    encounterHistory 0..1 and
    goalList 0..1 and
    followUp 0..1      //todo dhay added

//* section 1..*
* section.section 0..0          //can't have sub sections
* section.emptyReason 0..0      //and no empty reason on the sections

* section[clinicalSynopsis].code.coding.userSelected = false
* section[clinicalSynopsis].code.coding.system = "http://loinc.org"
* section[clinicalSynopsis].code.coding.code = #11329-0 (exactly)
* section[clinicalSynopsis].code.coding.display = "History general"
* section[clinicalSynopsis].mode = #snapshot
* section[clinicalSynopsis].text MS

* section[adverseReactionList].code.coding.system = "http://loinc.org"
* section[adverseReactionList].code.coding.code = #48765-2 (exactly)
* section[adverseReactionList].mode = #snapshot
* section[adverseReactionList].entry only Reference(AUPrimaryCareAllergyIntoleranceList)
* section[adverseReactionList].entry MS

* section[medicalHistoryList].code.coding.system = "http://loinc.org"
* section[medicalHistoryList].code.coding.code = #11348-0 (exactly)
* section[medicalHistoryList].mode = #snapshot
* section[medicalHistoryList].entry only Reference(AUPrimaryCareMedicalHistoryList)
* section[medicalHistoryList].entry MS

* section[vaccinationList].code.coding.system = "http://loinc.org"
* section[vaccinationList].code.coding.code = #41291-6 (exactly)
* section[vaccinationList].code.coding.display = "Immunization"
* section[vaccinationList].mode = #snapshot
* section[vaccinationList].entry only Reference(AUPrimaryCareImmunisationList)
* section[vaccinationList].entry MS

* section[medicineList].code.coding.system = "http://loinc.org"
* section[medicineList].code.coding.code = #10160-0 (exactly) 
* section[medicineList].mode = #snapshot
* section[medicineList].entry only Reference(AUPrimaryCareMedicineList)
* section[medicineList].entry MS

* section[socialHistory].code.coding.system = "http://loinc.org"
* section[socialHistory].code.coding.code = #29762-2 (exactly)
* section[socialHistory].mode = #snapshot
* section[socialHistory].entry only Reference(AUPrimaryCareSmokingStatus or AUPrimaryCareAlcoholStatus)
* section[socialHistory].entry MS

* section[familyHistoryList].code.coding.system = "http://loinc.org"
* section[familyHistoryList].code.coding.code = #10157-6 (exactly)
* section[familyHistoryList].mode = #snapshot
* section[familyHistoryList].entry only Reference(AUPrimaryCareFamilyMemberHistoryList)
* section[familyHistoryList].entry MS

* section[encounterHistory].code.coding.system = "http://loinc.org"
* section[encounterHistory].code.coding.code = #11347-2 (exactly)
* section[encounterHistory].mode = #snapshot
* section[encounterHistory].entry only Reference(AUPrimaryCareEncounter)
* section[encounterHistory].entry MS

* section[pregnancyHistory].code.coding.system = "http://loinc.org"
* section[pregnancyHistory].code.coding.code = #10163-4 (exactly)
* section[pregnancyHistory].mode = #snapshot
* section[pregnancyHistory].entry only Reference(AUPrimaryCareGravidity or AUPrimaryCareParity or AUPrimaryCareLMP or AUPrimaryCareEDD)
* section[pregnancyHistory].entry MS

* section[goalList].code.coding.system = "http://loinc.org"
* section[goalList].code.coding.code = #61146-7 (exactly)
* section[goalList].mode = #snapshot
* section[goalList].entry only Reference(AUPrimaryCareGoalList)
* section[goalList].entry MS

* section[followUp].code.coding.system = "http://loinc.org"
* section[followUp].code.coding.code = #69730-0 (exactly)
* section[followUp].mode = #snapshot
* section[followUp].entry only Reference(AUPrimaryCareFollowUpList)
* section[followUp].entry MS