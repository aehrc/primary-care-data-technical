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
Description: """
A snapshot view about the use of a specified medication by an individual.

**Usage** 

Use to store or exchange a snapshot view about the use of a specified medication, including current use, past use or planned use.
A Medication statement can only be considered correct and accurate at the time it was asserted.

**Misuse**

Not to be used to record specific details about a medication order.
Not to be used to record details about specific medication-related activities, such as administration or dispense.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedicationStatement"
* medication[x] 1..1 MS
* medication[x][medicationCodeableConcept] from Medication_Code_Valueset (preferred) 
* medication[x][medicationCodeableConcept] MS
* medication[x][medicationReference] only Reference(AUPrimaryCareMedication)
* medication[x][medicationReference] MS
* status MS
* note.text MS
* reasonCode MS
* dosage 1..1 MS
* dosage.text MS
* dosage.doseAndRate.doseQuantity MS
//* dosage.timing.code MS
* dosage.additionalInstruction MS
* dosage.asNeeded[x][asNeededCodeableConcept] MS
* dosage.asNeeded[x][asNeededBoolean] MS
* dosage.route MS


Profile: AUPrimaryCareMedication
Parent: http://hl7.org.au/fhir/StructureDefinition/au-medication
Id: AUPrimaryCareMedication
Title: "AU Primary Care Medication"
Description: """
A single medication, ingredient, or substance.

**Usage** 

Use to record specific details about a single medication:
- when details about the medication are not part of an authoritative knowledge base or pharmacopoeia;
- to represent a custom compounded medication and/or it's components; and
- to identify medications which are included in a multi-component pack.

Designed to be nested within a clinically appropriate, standalone item which requires a consistent model for recording details about a single medication - for example, to extend the 'Medication statement item' by inserting within the [Medication item] data element.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareMedication"
* extension contains http://hl7.org.au/fhir/StructureDefinition/medication-strength named medication-strength 0..1  MS
* code MS
* code.coding[amt] MS
* form MS
* form.coding MS
* ingredient.itemCodeableConcept[itemCodeableConcept] MS
* ingredient.strength MS

