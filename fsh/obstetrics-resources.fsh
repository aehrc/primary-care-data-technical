// PROFILES 

Profile: Gravidity
Parent: http://hl7.org.au/fhir/StructureDefinition/au-gravidity
Id: AUPrimaryCareGravidity
Title: "AU Primary Care Gravidity"
Description: "Represents the gravidity (number of pregnancies) of a female patient"
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservationGravidity"
//* code.coding[gravidityLOINC] = http://snomed.info/sct#161732006
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS

Profile: Parity
Parent: http://hl7.org.au/fhir/StructureDefinition/au-parity
Id: AUPrimaryCareParity
Title: "AU Primary Care Parity"
Description: "The number of births where the fetus is overr 24 weeks"
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservationParity"
// code must have a LOINC 11977-6 (SNOMED value of 364325004), but other codes are allowed
//* code.coding[parityLOINC] = http://snomed.info/sct#364325004
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS

Profile: LastNormalMenstrualPeriod
Parent: http://hl7.org.au/fhir/StructureDefinition/au-lastmenstrualperiod
Id: AUPrimaryCareLMP
Title: "Last Menstrual Period"
Description: "The date of the last normal menstrual period"
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservationLMP"
//must have a SNOMED code with a value of 248993009, may have a LOINC one (8665-2) as well
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS


Profile: EstimatedDateOfDelivery
Parent: http://hl7.org.au/fhir/StructureDefinition/au-estimateddateofdelivery
Id: AUPrimaryCareEDD
Title: "Estimated Date of Delivery"
Description: "The date that delivery is due."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservationEDD"
* status = #final
* status MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS

Profile: GestationalAge
Parent: http://hl7.org.au/fhir/StructureDefinition/au-gestationalage
Id: AUPrimaryCareGestationalAge
Title: "Gestational Age"
Description: "Gestational age of a fetus."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservationGestationalAge"
* status = #final
* status MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS


Profile: BreastfeedingStatus
Parent: Observation
Id: AuPrimaryCareBreastfeedingStatus
Title: "AU Primary Care Breastfeeding Status"
Description: "This profile defines core information requirements for breastfeeding related status in an Australian practice to practice record transfer."
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


