// PROFILES 

Profile: UltrasoundScanObstetric
Parent: https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareProcedure
Id: AUPrimaryCareProcedure-UltrasoundScanObstetric
Title: "Ultrasound Scan Obstetric"
Description: "A ultrasound scan for obstetric purposes"
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareProcedure-UltrasoundScanObstetric"
* code 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains scanSnomed 1..1
* code.coding[scanSnomed] = http://snomed.info/sct#268445003
* performed[x] 1..1

Profile: AUPrimaryCareProcedureList
Parent: List
Id: AUPrimaryCareProcedureList
Title: "AU Primary Care Procedure List"
Description: "This profile defines a procedure list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareProcedureList"
* status = #current
* mode = #snapshot
* entry.item only Reference(AUPrimaryCareProcedure)
* entry.item MS
* emptyReason MS

Profile: AUPrimaryCareProcedure
Parent: Procedure
Id: AUPrimaryCareProcedure
Title: "AU Primary Care Procedure"
Description: "This profile defines a procedure structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareProcedure"
* meta.lastUpdated MS
* extension contains http://hl7.org/fhir/StructureDefinition/procedure-targetBodyStructure named targetBodyStructureReference 0..1  // * extension contains MedicalHistoryLaterality named MedicalHistoryLaterality 0..1     //an external extension
* code from Procedure_Code_Valueset (preferred)
* code MS
* code.coding MS
* subject only Reference(AUPrimaryCarePatient)
* subject MS
* performedDateTime MS
* bodySite from https://healthterminologies.gov.au/fhir/ValueSet/body-site-1 (preferred)
* bodySite MS
* note.text MS

