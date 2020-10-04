// PROFILES 

Profile: AUPrimaryCarePatient
Parent: http://hl7.org.au/fhir/StructureDefinition/au-patient
Id: AUPrimaryCarePatient
Title: "AU Primary Care Patient"
Description: "This profile defines a patient administration details structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient"
* extension contains http://hl7.org.au/fhir/StructureDefinition/indigenous-status named atsi 0..1 MS
* active MS
* name 1..1
* name MS

//set the telecom phone and email as Must Support
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open

* telecom contains 
    phone 0..1 and 
    email 0..1

* telecom[phone].system = #phone (exactly)
* telecom[phone].system MS
* telecom[phone].value MS

* telecom[email].system = #email (exactly)
* telecom[email].system MS
* telecom[email].value MS

* birthDate 1..1
* birthDate MS
* address MS
* contact ^slicing.discriminator.type = #value
* contact ^slicing.discriminator.path = "telecom.system"
* contact ^slicing.discriminator.type = #value
* contact ^slicing.discriminator.path = "relationship.coding.code"
* contact ^slicing.rules = #open
* contact contains emergencyContact 0..1
* contact[emergencyContact].relationship.coding.system = "http://hl7.org/fhir/ValueSet/patient-contactrelationship"
* contact[emergencyContact].relationship.coding.code = #C
* contact[emergencyContact].relationship.coding.code MS
* contact[emergencyContact].telecom.system = #phone
* contact[emergencyContact].telecom.system MS

// R2
/*
* communication MS
* communication.language from https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2 (required)
* communication.language MS
*/
