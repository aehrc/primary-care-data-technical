// PROFILES 

Profile: AUPrimaryCarePatient
Parent: http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient
Id: AUPrimaryCarePatient
Title: "AU Primary Care Patient"
Description: """
Details of a patient including identity, demographic and contacts.

**Extensions**

* Indigenous Status : Aboriginal or Torres Strait Islander origin status for the individual, usually self-identified.
* Birth Place : Record of place of birth.
* Date of Arrival : Record of date of arrival in australia.
* Ethnicity : Use to record information about one or more cultural and ethnic identities, self described by the individual.
* Gender Identity : Record of personal identity with respect to gender.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient"
* extension[http://hl7.org.au/fhir/StructureDefinition/closing-the-gap-registration] 0..1 MS
* active MS
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

