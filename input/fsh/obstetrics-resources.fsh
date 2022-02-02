// PROFILES 

Profile: AUPrimaryCareGravidity
Parent: http://hl7.org.au/fhir/StructureDefinition/au-gravidity
Id: AUPrimaryCareGravidity
Title: "AU Primary Care Gravidity"
Description: """
Number of times a woman has been pregnant, current and past, regardless of the pregnancy outcome.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareGravidity"
//* code.coding[gravidityLOINC] = http://snomed.info/sct#161732006
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS

Profile: AUPrimaryCareParity
Parent: http://hl7.org.au/fhir/StructureDefinition/au-parity
Id: AUPrimaryCareParity
Title: "AU Primary Care Parity"
Description: """
Number of times a woman has given birth to a viable baby, regardless of the pregnancy outcome.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareParity"
// code must have a LOINC 11977-6 (SNOMED value of 364325004), but other codes are allowed
//* code.coding[parityLOINC] = http://snomed.info/sct#364325004
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS

Profile: AUPrimaryCareLMP
Parent: http://hl7.org.au/fhir/StructureDefinition/au-lastmenstrualperiod
Id: AUPrimaryCareLMP
Title: "AU Primary Care Last Menstrual Period"
Description: """
First day of menstrual bleeding in the most recent typical menstrual cycle experienced by the individual.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareLMP"
//must have a SNOMED code with a value of 248993009, may have a LOINC one (8665-2) as well
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS


Profile: AUPrimaryCareEDD
Parent: http://hl7.org.au/fhir/StructureDefinition/au-estimateddateofdelivery
Id: AUPrimaryCareEDD
Title: "AU Primary Care Estimated Date of Delivery"
Description: """"
Estimated date of delivery for a pregnancy, calculated or estimated by a variety of methods.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareEDD"
* status = #final
* status MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS
* partOf only Reference(AUPrimaryCareUltrasoundScanObstetric or MedicationAdministration or MedicationDispense or MedicationStatement or Procedure or Immunization or ImagingStudy)
* partOf MS

Profile: AUPrimaryCareGestationalAge
Parent: http://hl7.org.au/fhir/StructureDefinition/au-gestationalage
Id: AUPrimaryCareGestationalAge
Title: "AU Primary Care Gestational Age"
Description: """
Estimated gestational age by variable methods.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareGestationalAge"
* status = #final
* status MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS


Profile: AUPrimaryCareBreastfeedingStatus
Parent: Observation
Id: AUPrimaryCareBreastfeedingStatus
Title: "AU Primary Care Breastfeeding Status"
Description: """
Summary or persistent information about current or past breastfeeding activity by an individual.

**Usage** 

Use to record details about the current breastfeeding status and current and/or past breastfeeding activity.
Record as a single instance in a health record; updated and revised over time as a new version.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareBreastfeedingStatus"
* status 1..1 MS
* code = $SNOMED#413712001
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* note MS
* value[x] only CodeableConcept
* value[x] from Breastfeeding_Code_Valueset
* value[x] 1..1 MS


