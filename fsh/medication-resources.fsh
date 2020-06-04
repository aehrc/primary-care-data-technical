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
* medication[x] only Reference(AUPrimaryCareMedication)
* note.text MS
* dosage.additionalInstruction MS
* dosage.timing.repeat.duration MS
* dosage.timing.repeat.frequency MS
* dosage.timing.repeat.period MS
* dosage.timing.repeat.when MS
* dosage.asNeeded[x] MS

Profile: AUPrimaryCareMedication
Parent: http://hl7.org.au/fhir/StructureDefinition/au-medication
Id: AUPrimaryCareMedication
Title: "AU Primary Care Medication"
Description: "This profile defines a medication structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedication"
* extension contains null 0..1 MS
* code MS
* code.coding[amt] MS
* form MS
* form.coding MS
* ingredient.itemCodeableConcept[itemCodeableConcept] MS
* ingredient.itemCodeableConcept.coding ^slicing.discriminator.type = #value
* ingredient.itemCodeableConcept.coding ^slicing.discriminator.path = "system"
* ingredient.itemCodeableConcept.coding ^slicing.rules = #open
* ingredient.itemCodeableConcept.coding contains amtMP 0..1
* ingredient.itemCodeableConcept.coding[amtMP] MS
* ingredient.strength MS

