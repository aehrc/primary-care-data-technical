Profile: AUPrimaryCareWaistCircumference
Parent: Observation
Id: AUPrimaryCareWaistCircumference
Title: "AU Primary Care"
Description: """
The date when the individual last ceased smoking tobacco of any type.

**Usage** 

The definition of smoking cessation is not universally clear, obviously involving abstinence from tobacco smoking for various periods of time, often varying between 28 days and 12 months. At any time, especially within the first 12 months, there is a possibility of relapse and the quit date will need to be removed and the item updated.

Partial dates are permitted.
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