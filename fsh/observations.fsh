Profile: AUPrimaryCareWaistCircumference
Parent: Observation
Id: AUPrimaryCareWaistCircumference
Title: "AU Primary Care Waist Circumference"
Description: """
Waist circumference observation.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareWaistCircumference"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains LOINC 1..1 and SNOMED 1..1 MS
* code.coding[LOINC] = $LOINC#8280-0
* code.coding[SNOMED] = $SNOMED#160625004
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueQuantity 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.code 1..1 MS
* valueQuantity.code = http://unitsofmeasure.org#cm
* valueQuantity.value 1..1 MS