// PROFILES 


Profile: AUPrimaryCareMedicineList
Parent: http://hl7.org.au/fhir/StructureDefinition/au-medlist
Id: AUPrimaryCareMedicineList
Title: "AU Primary Care Medicine List"
Description: "This profile defines a medicine list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedicineList"
* status = #current
* mode = #snapshot
* date MS
* entry MS
* entry.item only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedicationStatement)
* entry.item MS
* emptyReason MS

Profile: AUPrimaryCareMedicationStatement
Parent: http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement
Id: AUPrimaryCareMedicationStatement
Title: "AU Primary Care Medication Statement"
Description: "This profile defines a medication statement structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedicationStatement"
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #open
* medication[x][medicationCodeableConcept] from Medication_Code_Valueset (preferred) 
* medication[x][medicationCodeableConcept] MS
* medication[x][medicationReference] only Reference(AUPrimaryCareMedication)
* medication[x][medicationReference] MS
* status MS
* note.text MS
* reasonCode MS
* dosage.text MS
* dosage.additionalInstruction MS
* dosage.asNeeded[x] MS


Profile: AUPrimaryCareMedication
Parent: http://hl7.org.au/fhir/StructureDefinition/au-medication
Id: AUPrimaryCareMedication
Title: "AU Primary Care Medication"
Description: "This profile defines a medication structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedication"
* extension contains http://hl7.org.au/fhir/StructureDefinition/medication-strength named medication-strength 0..1  MS
* code MS
* code.coding[amt] MS
* form MS
* form.coding MS
* ingredient.itemCodeableConcept[itemCodeableConcept] MS
* ingredient.strength MS

