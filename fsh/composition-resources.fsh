// PROFILES 

Profile: AUPrimaryCareComposition
Parent: http://hl7.org.au/fhir/StructureDefinition/au-composition
Id: AUPrimaryCareComposition
Title: "AU Primary Care Composition"
Description: "This profile defines a composition structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareComposition"
* status = #final

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
    followUp 0..1 and 
    attachments 0..1 

//* section 1..*
//* section.section 0..0          //can't have sub sections
//* section.emptyReason 0..0      //and no empty reason on the sections

* section[clinicalSynopsis].code.coding.userSelected = false
* section[clinicalSynopsis].code.coding.system = "http://loinc.org"
* section[clinicalSynopsis].code.coding.code = #11329-0 (exactly)
* section[clinicalSynopsis].code.coding.display = "History general"
* section[clinicalSynopsis].code MS
* section[clinicalSynopsis].mode = #snapshot
* section[clinicalSynopsis].mode MS 
* section[clinicalSynopsis].text MS

* section[adverseReactionList].code.coding.system = "http://loinc.org"
* section[adverseReactionList].code.coding.code = #48765-2 (exactly)
* section[adverseReactionList].code MS
* section[adverseReactionList].mode = #snapshot
* section[adverseReactionList].mode MS
* section[adverseReactionList].entry only Reference(AUPrimaryCareAllergyIntoleranceList)
* section[adverseReactionList].entry MS

* section[medicalHistoryList].code.coding.system = "http://loinc.org"
* section[medicalHistoryList].code.coding.code = #11348-0 (exactly)
* section[medicalHistoryList].code MS
* section[medicalHistoryList].mode = #snapshot
* section[medicalHistoryList].mode MS
* section[medicalHistoryList].entry only Reference(AUPrimaryCareMedicalHistoryList)
* section[medicalHistoryList].entry MS

* section[vaccinationList].code.coding.system = "http://loinc.org"
* section[vaccinationList].code.coding.code = #41291-6 (exactly)
* section[vaccinationList].code.coding.display = "Immunization"
* section[vaccinationList].code MS
* section[vaccinationList].mode = #snapshot
* section[vaccinationList].mode MS
* section[vaccinationList].entry only Reference(AUPrimaryCareImmunisationList)
* section[vaccinationList].entry MS

* section[medicineList].code.coding.system = "http://loinc.org"
* section[medicineList].code.coding.code = #10160-0 (exactly) 
* section[medicineList].code MS
* section[medicineList].mode = #snapshot
* section[medicineList].mode MS
* section[medicineList].entry only Reference(AUPrimaryCareMedicineList)
* section[medicineList].entry MS

* section[socialHistory].code.coding.system = "http://loinc.org"
* section[socialHistory].code.coding.code = #29762-2 (exactly)
* section[socialHistory].code MS
* section[socialHistory].mode = #snapshot
* section[socialHistory].mode MS
* section[socialHistory].entry ^slicing.discriminator.type = #profile
* section[socialHistory].entry ^slicing.discriminator.path = "resolve()"
* section[socialHistory].entry ^slicing.rules = #closed
* section[socialHistory].entry contains 
    socialSummary 0..1 MS and
    smokingStatus 0..1 MS and
    smokingSummary 0..1 MS and
    smokingStarted 0..1 MS and
    smokingCeased 0..1 MS and
    smokingPattern 0..* MS and 
    smokingOverallPackYears 0..1 MS and 
    alcoholStatus 0..1 MS and 
    alcoholSummary 0..1 MS and
    alcoholPattern 0..* MS and
    alcoholCeased 0..1 MS 
* section[socialHistory].entry[socialSummary] only Reference(AUPrimaryCareSocialSummary)
* section[socialHistory].entry[smokingStatus] only Reference(AUPrimaryCareSmokingStatus)
* section[socialHistory].entry[smokingSummary] only Reference(AUPrimaryCareTobaccoSmokingSummary)
* section[socialHistory].entry[smokingStarted] only Reference(AUPrimaryCareTobaccoSmokingDateStarted)
* section[socialHistory].entry[smokingCeased] only Reference(AUPrimaryCareTobaccoSmokingDateCeased)
* section[socialHistory].entry[smokingPattern] only Reference(AUPrimaryCareTobaccoPatternOfUse)
* section[socialHistory].entry[smokingOverallPackYears] only Reference(AUPrimaryCareOverallPackYears)
* section[socialHistory].entry[alcoholStatus] only Reference(AUPrimaryCareAlcoholStatus)
* section[socialHistory].entry[alcoholSummary] only Reference(AUPrimaryAlcoholConsumptionSummary)
* section[socialHistory].entry[alcoholPattern] only Reference(AUPrimaryCareAlcoholPatternOfUse)
* section[socialHistory].entry[alcoholCeased] only Reference(AUPrimaryCareAlcoholConsumptionDateCeased)
* section[socialHistory].entry MS

* section[familyHistoryList].code.coding.system = "http://loinc.org"
* section[familyHistoryList].code.coding.code = #10157-6 (exactly)
* section[familyHistoryList].code MS
* section[familyHistoryList].mode = #snapshot
* section[familyHistoryList].mode MS
* section[familyHistoryList].entry only Reference(AUPrimaryCareFamilyMemberHistoryList)
* section[familyHistoryList].entry MS

* section[encounterHistory].code.coding.system = "http://loinc.org"
* section[encounterHistory].code.coding.code = #11347-2 (exactly)
* section[encounterHistory].code MS
* section[encounterHistory].mode = #snapshot
* section[encounterHistory].mode MS
* section[encounterHistory].entry only Reference(AUPrimaryCareEncounterList)
* section[encounterHistory].entry MS

* section[pregnancyHistory].code.coding.system = "http://loinc.org"
* section[pregnancyHistory].code.coding.code = #10163-4 (exactly)
* section[pregnancyHistory].code MS
* section[pregnancyHistory].mode = #snapshot
* section[pregnancyHistory].mode MS
* section[pregnancyHistory].entry ^slicing.discriminator.type = #profile
* section[pregnancyHistory].entry ^slicing.discriminator.path = "resolve()"
* section[pregnancyHistory].entry ^slicing.rules = #closed
* section[pregnancyHistory].entry contains 
    gravidity 0..1 MS and
    parity 0..1 MS and
    lmp 0..1 MS and
    edd 0..1 MS and
    scan 0..1 MS and
    breastfeeding 0..1 MS and 
    gestationalage 0..1 MS
* section[pregnancyHistory].entry[gravidity] only Reference(AUPrimaryCareGravidity)
* section[pregnancyHistory].entry[parity] only Reference(AUPrimaryCareParity)
* section[pregnancyHistory].entry[lmp] only Reference(AUPrimaryCareLMP)
* section[pregnancyHistory].entry[edd] only Reference(AUPrimaryCareEDD)
* section[pregnancyHistory].entry[scan] only Reference(AUPrimaryCareUltrasoundScanObstetric)
* section[pregnancyHistory].entry[breastfeeding] only Reference(AUPrimaryCareBreastfeedingStatus)
* section[pregnancyHistory].entry[gestationalage] only Reference(AUPrimaryCareGestationalAge)
* section[pregnancyHistory].entry MS

* section[goalList].code.coding.system = "http://loinc.org"
* section[goalList].code.coding.code = #61146-7 (exactly)
* section[goalList].code MS
* section[goalList].mode = #snapshot
* section[goalList].mode MS
* section[goalList].entry only Reference(AUPrimaryCareGoalList)
* section[goalList].entry MS

* section[followUp].code.coding.system = "http://loinc.org"
* section[followUp].code.coding.code = #69730-0 (exactly)
* section[followUp].code MS
* section[followUp].mode = #snapshot
* section[followUp].mode MS
* section[followUp].entry only Reference(AUPrimaryCareFollowUpList)
* section[followUp].entry MS

* section[attachments].code.coding.system = "http://loinc.org"
* section[attachments].code.coding.code = #52033-8 (exactly)
* section[attachments].code MS
* section[attachments].mode = #snapshot
* section[attachments].mode MS
* section[attachments].entry only Reference(AUPrimaryCareAttachment)
* section[attachments].entry MS
