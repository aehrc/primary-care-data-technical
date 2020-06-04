// PROFILES 

Profile: AUPrimaryCareGravidity
Parent: Observation
Id: AUPrimaryCareObservation-gravidity
Title: "AU Primary Care Gravidity"
Description: "Represents the gravidity (number of pregnancies) of a female patient"
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservation-gravidity"
* status = #final

// code must have a SNOMED value of 161732006, but other codes are allowed
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
//* code.coding 1..1
* code.coding contains graviditySnomed 1..1

//* code.coding[graviditySnomed] = http://snomed.info/sct#161732006
* code.coding[graviditySnomed].system = $SNOMED (exactly) 
* code.coding[graviditySnomed].code = #161732006
* subject 1..1
* value[x] 1..1

Profile: AUPrimaryCareParity
Parent: Observation
Id: AUPrimaryCareObservation-parity
Title: "AU Primary Care Parity"
Description: "The number of births where the fetus is overr 24 weeks"
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservation-parity"
* status = #final


// code must have a SNOMED value of 364325004, but other codes are allowed
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
//* code.coding 1..1

* code.coding contains paritySnomed 1..1
//* code.coding[paritySnomed] = http://snomed.info/sct#364325004
* code.coding[paritySnomed].system = $SNOMED (exactly)
* code.coding[paritySnomed].code = #364325004


* subject 1..1
* value[x] 1..1

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

Profile: ExpectedDateOfDelivery
Parent: Observation
Id: AUPrimaryCareObservation-EDD
Title: "Expected Date of Delivery"
Description: "The date that delivery is due. Method of estimation not specified."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservation-EDD"
* status = #final


//todo this is tricky. I think we want to say that 'there must be a coded element from the Valueset, but others are allowed'
//trouble is, slicing on system means that that is the distinguishing feature - and teh IG publisher
//complains if there isn't a fixed value for the system property on the slice. 
//for now, I've just made it a required element with an extensible binding 
* code 1..1
* code from http://aehrc.com/valueset/expecteddateofdeliverytypes (extensible)
/*
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open

* code.coding contains sliceCoding 1..1


* code.coding[sliceCoding] from http://aehrc.com/valueset/expecteddateofdeliverytypes (required)
*/

//* code.coding from http://aehrc.com/valueset/expecteddateofdeliverytypes (preferred)

* subject 1..1

Profile: LastNormalMenstrualPeriod
Parent: Observation
Id: AUPrimaryCareObservation-LNMP
Title: "Last Menstrual Period"
Description: "The date of the womand last normal menstrual period"
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareObservation-LNMP"
* status = #final

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding 1..1

//must have a SNOMED code with a value of 248993009, may have a LOINC one (8665-2) as well
* code.coding contains 
    lnmpSnomed 1..1 and
    lnmpLoinc 0..1

* code.coding[lnmpSnomed].system = $SNOMED (exactly)
* code.coding[lnmpSnomed].code = #248993009

* code.coding[lnmpLoinc].system = $LOINC (exactly)
* code.coding[lnmpLoinc].code = #8665-2
/*
* code.coding contains lnmpSnomed 1..1      
* code.coding[lnmpSnomed] = http://snomed.info/sct#248993009
* code.coding contains lnmpLoinc 0..1
* code.coding[lnmpLoinc] = http://loinc.org#8665-2
*/

* subject 1..1
* value[x] 1..1

