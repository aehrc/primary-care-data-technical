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


Profile: AUPrimaryCareTobaccoSmokingSummary
Parent: Observation
Id: AUPrimaryCareTobaccoSmokingSummary
Title: "AU Primary Tobacco Smoking Summary"
Description: "This profile defines core information requirements for a tobacco smoking summary in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareTobaccoSmokingSummary"
* status 1..1 MS
* code = $SNOMED#229819007
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueString MS


Profile: AUPrimaryCareTobaccoSmokingDateCeased
Parent: Observation
Id: AUPrimaryCareTobaccoSmokingdDateCeased
Title: "AU Primary Tobacco Smoking Date Ceased"
Description: "This profile defines core information requirements for a tobacco smoking date ceased in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareTobaccoSmokingDateCeased"
* status 1..1 MS
* code = $SNOMED#160625004
// $LOINC#74010-0
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueDateTime MS

Profile: AUPrimaryCareTobaccoSmokingDateStarted
Parent: Observation
Id: AUPrimaryCareTobaccoSmokingdDateStarted
Title: "AU Primary Tobacco Smoking Date Started"
Description: "This profile defines core information requirements for a tobacco smoking date started in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareTobaccoSmokingDateStarted"
* status 1..1 MS
* code = http://aehrc.com/fhir/observable-entity-temporary#smoking-date-started
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueDateTime MS


Profile: AUPrimaryCareTobaccoPatternOfUse
Parent: Observation
Id: AUPrimaryCareTobaccoPatternOfUse
Title: "AU Primary Tobacco Smoking Pattern Of Use"
Description: "This profile defines core information requirements for a tobacco pattern of use in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareTobaccoPatternOfUse"
* status 1..1 MS
* code from TobaccoPatternOfUse_Code_Valueset (required)
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains tobaccouse 1..1
* code.coding[tobaccouse] = $SNOMED#266918002
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* valueQuantity MS
* valueQuantity.code from SmokingUseUnits_Code_ValueSet
* valueQuantity.code MS
* valueCodeableConcept from SmokingPattern_Code_ValueSet
* valueCodeableConcept MS


Profile: AUPrimaryCareSmokingCessationAttempts
Parent: Observation
Id: AUPrimaryCareSmokingCessationAttempts
Title: "AU Primary Tobacco Smoking Cessation Attempts"
Description: "This profile defines core information requirements for a tobacco smoking cessation attempts count in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSmokingCessationAttempts"
* status 1..1 MS
* code from SmokingCessationAttempts_Code_Valueset (required)
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains tobaccocessationattempts 1..1
* code.coding[tobaccocessationattempts] = http://aehrc.com/fhir/observable-entity-temporary#cessation-attempts-smoking
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.code = #1

Profile: AUPrimaryCareOverallPackYears
Parent: Observation
Id: AUPrimaryCareOverallPackYears
Title: "AU Primary Tobacco Smoking Overall Pack Years"
Description: "This profile defines core information requirements for a tobacco smoking cigarette pack years attempts in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareOverallPackYears"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains tobaccooverallpackyears 1..1
* code.coding[tobaccooverallpackyears] = $SNOMED#401201003
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.code = #{PackYears}

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

Profile: AUPrimaryAlcoholConsumptionSummary
Parent: Observation
Id: AUPrimaryCareAlcoholConsumptionSummary
Title: "AU Primary Alcohol Consumption Summary"
Description: "This profile defines core information requirements for a alcohol consumption summary in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAlcoholConsumptionSummary"
* status 1..1 MS
* code = $SNOMED#160573003
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueString MS

Profile: AUPrimaryCareSocialSummary
Parent: Observation
Id: AUPrimaryCareSocialSummary
Title: "AU Primary Care Social Summary"
Description: "This profile defines core information requirements for a social history description in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSocialSummary"
* status 1..1 MS
* code = $SNOMED#160476009
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueString MS




