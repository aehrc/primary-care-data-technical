// PROFILES 

Profile: AUPrimaryCareSmokingStatus
Parent: http://hl7.org.au/fhir/StructureDefinition/au-smokingstatus
Id: AUPrimaryCareSmokingStatus
Title: "AU Primary Care Smoking Status"
Description: "This profile defines core information requirements for smoking status in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSmokingStatus"
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* value[x] 1..1 MS


Profile: AUPrimaryCareAlcoholStatus
Parent: Observation
Id: AUPrimaryCareAlcoholStatus
Title: "AU Primary Care Alcohol Status"
Description: "This profile defines core information requirements for alcohol status in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAlcoholStatus"
* status 1..1 MS
* code = $SNOMED#160573003
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* value[x] only CodeableConcept
* value[x] from AlcoholIntake_Code_Valueset
* value[x] 1..1 MS


Profile: AUPrimaryCareSocialSummary
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




