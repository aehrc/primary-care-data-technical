// PROFILES 

Profile: AUPrimaryCareGravidity
Parent: http://hl7.org.au/fhir/StructureDefinition/au-gravidity
Id: AUPrimaryCareObservationGravidity
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

Profile: AUPrimaryCareParity
Parent: http://hl7.org.au/fhir/StructureDefinition/au-parity
Id: AUPrimaryCareObservationParity
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
Id: AUPrimaryCareObservationLMP
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



Profile: GestationOnScan
Parent: Observation
Id: AUPrimaryCareObservation-GestationOnScan
Title: "Gestation On Scan"
Description: "The gestational age from an ultrasound scan"
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservation-GestationOnScan"

* partOf ^slicing.discriminator.type = #profile
* partOf ^slicing.discriminator.path = "reference"
* partOf ^slicing.rules = #open
* partOf 1..1
//todo - referencing by profile doesn't seem to work...
* partOf contains ultrasoundScan 1..1
//* partOf[ultrasoundScan] only Reference(Procedure)
//* partOf[ultrasoundScan] only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareProcedure-UltrasoundScanObstetric)
*  partOf[ultrasoundScan] only Reference(AUPrimaryCareProcedure-UltrasoundScanObstetric)

* status = #final

// code must have a SNOMED value of 57036006, but other codes are allowed
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
//* code.coding 1..1

* code.coding contains gestationSnomed 1..1
//* code.coding[gestationSnomed] = http://snomed.info/sct#57036006
* code.coding[gestationSnomed].system = $SNOMED (exactly)
* code.coding[gestationSnomed].code = #57036006
* subject 1..1
* subject only Reference(http://hl7.org/fhir/StructureDefinition/Patient)

* effective[x] 1..1  //dh - observation is meaningless without a perfromed data todo - in theory could get from procedurer

//todo - ?slice to quantity
* value[x] 1..1

// EDD by scan LOINC 90368-2
Profile: EstimatedDateOfDelivery
Parent: http://hl7.org.au/fhir/StructureDefinition/au-estimateddateofdelivery
Id: AUPrimaryCareObservationEDD
Title: "Estimated Date of Delivery"
Description: "The date that delivery is due. Method of estimation not specified."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservationEDD"
* status = #final
* status MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 1..1 MS




